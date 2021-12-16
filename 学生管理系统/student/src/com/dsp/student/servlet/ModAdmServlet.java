package com.dsp.student.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dsp.student.model.AdminVO;
import com.dsp.student.model.Constant;
import com.dsp.student.service.AdminService;

@WebServlet("/ModAdmServlet")
public class ModAdmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminService adminService = new AdminService();
	
       
    public ModAdmServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		//获取登录信息
		AdminVO adm = (AdminVO)request.getSession().getAttribute("logAdmUser");
		
		//获取修改信息
		String admName = request.getParameter("admName");
		String admno = request.getParameter("admNo");
		String admNo = adm.getAdmNo();		
		
		System.out.println("admNo="+admNo);
		System.out.println("admno="+admno);
		System.out.println("admName="+admName);
		
		
		//修改
		int count = adminService.modAdmInfo(admNo,admName);
		
		if(count>0) {
			//修改成功 将修改后的参数放到session范围内
			adm.setAdmName(admName);
			request.getSession().setAttribute("logAdmUser", adm);
			//跳转到浏览学生信息页面
			response.sendRedirect("ViewStuServlet");
			
		}else{
			//提示失败
			request.setAttribute(Constant.PAGE_ERRMSG_KEY, "服务器繁忙，请稍后重试！");
			request.getAttribute("modifyAdmin.jsp");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
