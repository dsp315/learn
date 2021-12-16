package com.dsp.student.util;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DBUtil {
	//sqlSessionFactory �� sqlSession�Ĺ�����
	private static SqlSessionFactory sqlSessionFactory = null;
	
	public static SqlSession getSession(){
		SqlSession session = null;
		try {
			if(sqlSessionFactory == null){
			Reader reader = Resources.getResourceAsReader("config.xml");
			sqlSessionFactory=new SqlSessionFactoryBuilder().build(reader);
			}
			session = sqlSessionFactory.openSession();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return session;
	}
}
