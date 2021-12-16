package com.dsp.student.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dsp.student.model.AdminVO;
import com.dsp.student.model.Constant;
import com.dsp.student.service.AdminService;

@WebServlet("/LoginAdmServlet")
public class LoginAdmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminService admService = new AdminService();
       
    public LoginAdmServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		//获取参数
		String admNo = request.getParameter("admNo");
		String admPwd = request.getParameter("admPwd");
		
		AdminVO logUser = admService.login(admNo, admPwd);
		
		if (logUser == null) {
			//登录失败
			request.setAttribute(Constant.PAGE_ERRMSG_KEY, "管理员密码有误，登录失败！");
			//转发跳转
			request.getRequestDispatcher("loginAdm.jsp").forward(request, response);
		}else {
			//登录成功，将登录用户放入session范围内
			request.getSession().setAttribute("logAdmUser", logUser);
			//从定向跳转到学生浏览页面页面
			response.sendRedirect("ViewStuServlet");
		}
	
	} 

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
