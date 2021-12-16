package com.dsp.student.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dsp.student.model.Constant;

@WebServlet("/CheckAdmServlet")
public class CheckModAdmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CheckModAdmServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		//判断session范围内是否有登陆
		Object admNo = request.getSession().getAttribute("logAdmUser");
		if (admNo == null) {
			//登录异常，请登录后在操作！
			request.setAttribute(Constant.PAGE_ERRMSG_KEY, "请登录后在操作");
			request.getRequestDispatcher("loginAdm.jsp").forward(request, response);
			return;
		}
		//跳转到修改信息页面
		response.sendRedirect("modifyAdmin.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
