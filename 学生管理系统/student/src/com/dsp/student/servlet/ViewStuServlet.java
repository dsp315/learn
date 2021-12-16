package com.dsp.student.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dsp.student.model.StuVO;
import com.dsp.student.service.StuService;

@WebServlet("/ViewStuServlet")
public class ViewStuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StuService stuService = new StuService();
       
    public ViewStuServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//访问数据库，获取所有商品列表
		List<StuVO> proList = stuService.getStus(null);
		//放到request中
		request.setAttribute("proList", proList);
		//转发到商品列表页面
		request.getRequestDispatcher("viewStus.jsp").forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
