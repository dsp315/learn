package com.dsp.student.mapper;

import java.util.List;
import java.util.Map;

import com.dsp.student.model.StuVO;

public interface StuMapper {
	
	/**
	 * 加载所有学生信息
	 */
	public List<StuVO> getStus(Map<String, Object> param);
	
	/**
	 * 加载所有学生信息
	 */
	public List<StuVO> getStuBy(Map<String, Object> param);
	
	/**
	 * 添加学生
	 */
	public int addStu(Map<String, Object> param);
	
	/**
	 * 查询最大学号
	 */
	public String MaxStuNo();
	
	/**
	 * 查询要单个学生信息
	 */
	public List<StuVO> getStuByNo(String stuNo);

	/**
	 * 删除学生信息
	 */
	public int delStu(String stuNo);

	/**
	 * 修改学生信息
	 */
	public int modStu(Map<String, Object> param);
	
}
