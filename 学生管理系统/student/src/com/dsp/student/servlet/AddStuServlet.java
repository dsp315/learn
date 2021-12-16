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

@WebServlet("/AddStuServlet")
public class AddStuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StuService stuservice = new StuService();
       
    public AddStuServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		//获取参数
		String stuName = request.getParameter("stuName");
		String stuAge = request.getParameter("stuAge");
		int stuGender = Integer.parseInt(request.getParameter("stuGender"));
		String stuCollege = request.getParameter("stuCollege");
		String stuHometown = request.getParameter("stuHometown");
		String stuTel = request.getParameter("stuTel");
		
		//封装成StuVO对象
		StuVO stu = new StuVO();
		stu.setStuName(stuName);
		stu.setStuAge(stuAge);
		stu.setStuGender(stuGender);
		stu.setStuCollege(stuCollege);
		stu.setStuHometown(stuHometown);
		stu.setStuTel(stuTel);
		
		//添加学生信息
		int count = stuservice.addStu(stu);
		if (count == 0) {
			//学号已存在，请重新输入
			request.setAttribute(Constant.PAGE_ERRMSG_KEY, "添加失败，请重新添加！");
			request.getRequestDispatcher("addStu.jsp").forward(request, response);
			return;
		}
		response.sendRedirect("ViewStuServlet");
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
