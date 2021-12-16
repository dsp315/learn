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

@WebServlet("/QueStuServlet")
public class QueStuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StuService stuService = new StuService();
	
    public QueStuServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String stuNo = request.getParameter("stuNo");
		String stuName = request.getParameter("stuName");
		
		List<StuVO> list = stuService.getStuBy(stuNo, stuName);
		
		//放置到请求范围
		request.setAttribute("proList", list);
		//跳转放到index.jsp
		request.getRequestDispatcher("viewStus.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
