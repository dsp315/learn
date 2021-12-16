package com.dsp.student.mapper;

import java.util.Map;

import com.dsp.student.model.AdminVO;


public interface AdminMapper {
	/**
	 * 登录
	 */
	public AdminVO login(Map<String,Object> param); 
	
	/**
	 * 修改管理员信息
	 */
	public int modAdmInfo(Map<String,Object> param);
	
	/**
	 * 修改管理员密码
	 */
	public int modAdmPwd(Map<String, Object> param);
	
}
