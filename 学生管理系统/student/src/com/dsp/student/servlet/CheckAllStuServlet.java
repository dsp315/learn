package com.dsp.student.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dsp.student.model.Constant;


@WebServlet("/CheckAllStuServlet")
public class CheckAllStuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CheckAllStuServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		//检测session范围是否有登陆
		Object admNo = request.getSession().getAttribute("logAdmUser");
		
		
		
		if (admNo == null) {
			//登录异常
			request.setAttribute(Constant.PAGE_ERRMSG_KEY, "请登录后再操作！");
			request.getRequestDispatcher("loginAdm.jsp").forward(request, response);
			return;
		}else { 
			//从页面获取传来的参数
			String page = request.getParameter("page");
			//查找字符串返回各自页面
			switch (page) {
			case "view":
				//跳转学生浏览页面
				response.sendRedirect("ViewStuServlet");
				break;
			case "que":
				//跳转学生查询页面
				response.sendRedirect("queStu.jsp");
				break;
			case "add":
				//跳转学生添加页面
				response.sendRedirect("addStu.jsp");
				break;
			case "del":
				//跳转学生添加页面
				response.sendRedirect("delStu.jsp");
				break;
			case "mod":
				//跳转学生修改页面
				response.sendRedirect("modStu.jsp");
				break;
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
