package com.dsp.student.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dsp.student.model.Constant;
import com.dsp.student.service.StuService;

@WebServlet("/DelStuServlet")
public class DelStuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StuService stuService = new StuService();
       
    public DelStuServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String StuNo = request.getParameter("stuNO");
		System.out.println("NO="+StuNo);
		
		//调用删除
		int count = stuService.delStu(StuNo);
		
		if (count == 0) {
			//失败了
			request.setAttribute(Constant.PAGE_ERRMSG_KEY, "服务器繁忙，请稍后再试！");
			request.getRequestDispatcher("ViewStuServlet").forward(request, response);
			return;
		}
		//跳转删除页面
		response.sendRedirect("delStu.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
