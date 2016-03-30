package com.webmusic.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version 创建时间：2016年3月8日 下午3:20:23  
 */
public class MusicdetailServlet extends HttpServlet{


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	 String  email= req.getParameter("email");
	 String passwd = req.getParameter("passwd");
	 resp.sendRedirect("views/musicdetail.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
