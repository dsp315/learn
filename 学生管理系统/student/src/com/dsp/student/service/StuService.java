package com.dsp.student.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dsp.student.mapper.StuMapper;
import com.dsp.student.model.StuVO;
import com.dsp.student.util.DBUtil;

public class StuService {
	/**
	 * 加载所有学生信息
	 */
	public List<StuVO> getStus(String queryCondition){
		List<StuVO> list = new ArrayList<StuVO>();
		
		//封装Map
		Map<String, Object> param = new HashMap<String, Object>();
		if (queryCondition != null && queryCondition.trim().isEmpty()) {
			param.put("condition", queryCondition);
		}
		
		//访问数据库
		SqlSession session = null;
		
		try {
			session = DBUtil.getSession();
			StuMapper stuMap = session.getMapper(StuMapper.class);
			list = stuMap.getStus(param);
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
		
		
		return list;
	}

	/**
	 * 查询学生信息
	 */
	public List<StuVO> getStuBy(String stuNo, String stuName){
		List<StuVO> list = new ArrayList<StuVO>();
		
		//封装Map
		Map<String, Object> param = new HashMap<String, Object>();
		
		if (stuNo == null ||"".equals(stuNo.trim())) {
			stuNo = null;
		}else{
			param.put("deptName", "%"+stuNo+"%");
		}
		if (stuName == null ||"".equals(stuName.trim())) {
			stuName = null;
		}else{
			param.put("location", "%"+stuName+"%");
		}
		
		//访问数据库
		SqlSession session = null;
		

		try {
			session = DBUtil.getSession();
			StuMapper stuMap = session.getMapper(StuMapper.class);
			list = stuMap.getStuBy(param);
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
		
		return list;
	}

	
	/**
	 * 添加学生
	 */
	public int addStu(StuVO stu) {
		
		int count = 0;
		
		//封装map
		Map<String, Object> param = new HashMap<String, Object>();
		//获取学号
		String maxNo = this.MaxStuNo();
		
		param.put("stuNo", maxNo);
		param.put("stuName", stu.getStuName());
		param.put("stuAge", stu.getStuAge());
		param.put("stuGender", stu.getStuGender());
		param.put("stuCollege", stu.getStuCollege());
		param.put("stuHometown", stu.getStuHometown());
		param.put("stuTel", stu.getStuTel());
		
		//访问数据库
		SqlSession session = null;
		
		try {
			session = DBUtil.getSession();
			StuMapper stuMap = session.getMapper(StuMapper.class);
			
			//调用添加
			count = stuMap.addStu(param);
			
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
	 * 最大学号加一
	 */
	public String MaxStuNo() {
		
		String maxStuNo = null;
		
		SqlSession session = null;
		
		try {
			session = DBUtil.getSession();
			StuMapper stuMap = session.getMapper(StuMapper.class);
			
			//调用最大学号，然后加一
			maxStuNo = stuMap.MaxStuNo()+1;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return maxStuNo;
	}
	
	
	/**
	 * 查询要单个学生信息
	 */
	public List<StuVO> getStuByNo(String stuNo) {
		
		List<StuVO> list = new ArrayList<StuVO>();
		
		if (stuNo == null ||"".equals(stuNo.trim())) {
			return list = null;
		}else {
		
			//访问数据库
			SqlSession session = null;

			try {
				session = DBUtil.getSession();
				StuMapper stuMap = session.getMapper(StuMapper.class);
				//调用Map
				list = stuMap.getStuByNo(stuNo);
				session.commit();
			
			} catch (Exception e) {
				e.printStackTrace();
				session.rollback();
			}finally {
				session.close();
			}
		
			return list;
		}
	}

	/**
	 * 删除学生信息
	 */
	public int delStu(String stuNo) {
		int count = 0;
		
		SqlSession session = null;
		
		try {
			session = DBUtil.getSession();
			StuMapper stumap = session.getMapper(StuMapper.class);
			
			System.out.println("Stuno="+ stuNo);
			//调用map
			count = stumap.delStu(stuNo);
			
			session.commit();
			System.out.println("count="+count);
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
		
		return count;
	}

	/**
	 * 修改学生信息
	 */
	public int modStu(StuVO stu) {
		int count = 0;
		
		//封装map
		Map<String, Object> param = new HashMap<String, Object>();
		//获取学号
		
		param.put("stuNo", stu.getStuNo());
		param.put("stuName", stu.getStuName());
		param.put("stuAge", stu.getStuAge());
		param.put("stuGender", stu.getStuGender());
		param.put("stuCollege", stu.getStuCollege());
		param.put("stuHometown", stu.getStuHometown());
		param.put("stuTel", stu.getStuTel());
		
		//访问数据库
		SqlSession session = null;
		
		try {
			session = DBUtil.getSession();
			StuMapper stuMap = session.getMapper(StuMapper.class);
			
			//调用添加
			count = stuMap.modStu(param);
			
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		}finally {
			session.close();
		}
		
		
		return count;
	}
}
