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

@WebServlet("/ModAdmPwdServlet")
public class ModAdmPwdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminService admService = new AdminService();
       
    public ModAdmPwdServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		//获取参数
		String oldPwd = request.getParameter("oldPwd");
		String pwd1 = request.getParameter("pwd1");
		String pwd2 = request.getParameter("pwd2");
		
		//判断俩次密码是否一致
		if (pwd1 == null || pwd2 == null || !pwd1.equals(pwd2)) {
			System.out.println("++++++");
			//不一致，提示错误
			request.setAttribute(Constant.PAGE_ERRMSG_KEY, "密码为空或密码不一致！");
			request.getRequestDispatcher("modifyAdminPwd.jsp").forward(request, response);
			return;
		}
		
		//获取登录的管理员
		AdminVO login = (AdminVO)request.getSession().getAttribute("logAdmUser");
		//获取登录的管理员编号
		String admNo = login.getAdmNo();
		System.out.println(admNo);
		System.out.println(oldPwd);
		System.out.println(pwd1);
		
		//修改密码
		boolean falg = admService.ModAdmPwd(admNo,oldPwd,pwd1);
		if (!falg) {
			request.setAttribute(Constant.PAGE_ERRMSG_KEY, "原密码有误，请重新输入！");
			request.getRequestDispatcher("modifyAdminPwd.jsp").forward(request, response);
			return;
		}
		
		//修改成功
		response.sendRedirect("ViewStuServlet");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
