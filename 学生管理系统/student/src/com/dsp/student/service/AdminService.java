package com.dsp.student.service;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dsp.student.mapper.AdminMapper;
import com.dsp.student.model.AdminVO;
import com.dsp.student.util.DBUtil;
import com.yuexuan.javaSE.md5Util.MD5Util;

public class AdminService {

	/**
	 * 登录
	 */
	public AdminVO login(String admNo,String admPwd){
		AdminVO result = null;
		
		//拼接参数map
		Map<String, Object> param = new HashMap<String, Object>();
		
		SqlSession session = null;
		try {
			session = DBUtil.getSession();
			AdminMapper admMapper = session.getMapper(AdminMapper.class);
			
			param.put("admId", admNo);
			param.put("admPwd", MD5Util.messageDigest(admPwd));
			
			///调用登录
			result = admMapper.login(param);
			
			//提交
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
		return result;
		
	}
	
	/**
	 * 修改管理员信息
	 */
	public int modAdmInfo(String admNo, String admName) {
		int count = 0;
		//拼接参数map
		Map<String, Object> param = new HashMap<String, Object>();
		
		SqlSession session = null;
		try {
			session = DBUtil.getSession();
			AdminMapper admMapper = session.getMapper(AdminMapper.class);
			
			//封装Map
			param.put("admName", admName);
			param.put("admNo", admNo);
			
			//调用修改
			count = admMapper.modAdmInfo(param);
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
		
		return count;
	}

	/**
	 * 修改管理员密码
	 */
	public boolean ModAdmPwd(String admNo, String oldPwd, String pwd1) {
		
		//验证旧密码是否正确
		if(this.login(admNo, oldPwd) == null) {
			return false;
		}
		
		//修改密码
		 int count = 0;
		//拼接参数map
		Map<String, Object> param = new HashMap<String, Object>();
			
		SqlSession session = null;
		try {
			session = DBUtil.getSession();
			AdminMapper admMapper = session.getMapper(AdminMapper.class);
				
			//封装Map
			param.put("admNo", admNo);
			param.put("admPwd",MD5Util.messageDigest(pwd1));
		
			//调用修改
			count = admMapper.modAdmPwd(param);
			session.commit();
				
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
			
		return count >0;
	}
	
	
}
