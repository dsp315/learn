package com.dsp.student.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dsp.student.model.Constant;
import com.dsp.student.model.StuVO;
import com.dsp.student.service.StuService;

@WebServlet("/ModStuServlet")
public class ModStuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StuService stuservice = new StuService();
       
    public ModStuServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		//获取参数
		String stuNo = request.getParameter("stuNo");
		String stuName = request.getParameter("stuName");
		String stuAge = request.getParameter("stuAge");
		int stuGender = Integer.parseInt(request.getParameter("stuGender"));
		String stuCollege = request.getParameter("stuCollege");
		String stuHometown = request.getParameter("stuHometown");
		String stuTel = request.getParameter("stuTel");
		
		//封装成StuVO对象
		StuVO stu = new StuVO();
		stu.setStuNo(stuNo);
		stu.setStuName(stuName);
		stu.setStuAge(stuAge);
		stu.setStuGender(stuGender);
		stu.setStuCollege(stuCollege);
		stu.setStuHometown(stuHometown);
		stu.setStuTel(stuTel);
		
		//修改学生信息
		int count = stuservice.modStu(stu);
		if (count == 0) {
			//学号已存在，请重新输入
			request.setAttribute(Constant.PAGE_ERRMSG_KEY, "修改失败，请重新修改！");
			request.getRequestDispatcher("modStu.jsp").forward(request, response);
			return;
		}
		response.sendRedirect("ViewStuServlet");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
