package com.dsp.student.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dsp.student.model.Constant;
import com.dsp.student.model.StuVO;
import com.dsp.student.service.StuService;

@WebServlet("/ConDelStuServlet")
public class ConDelStuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StuService stuService = new StuService();
       
    public ConDelStuServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		//获取学号姓名
		String stuNo = request.getParameter("stuNo");
		
		//根据学号获取学生所有信息
		List<StuVO> list = stuService.getStuByNo(stuNo);
		
		if (list == null) {
			//查无此人
			request.setAttribute(Constant.PAGE_ERRMSG_KEY, "查无此人，请输入正确学号");
			response.sendRedirect("delStu.jsp");
			return;
		}else {
			//跳转删除确认页面
			request.setAttribute("list", list);
			request.getRequestDispatcher("conDelStu.jsp").forward(request, response);
			return;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
