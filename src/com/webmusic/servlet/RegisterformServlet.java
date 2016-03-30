package com.webmusic.servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webmusic.dao.Userdao;
import com.webmusic.model.User;

/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version 创建时间：2016年3月23日 下午1:36:01  
 */
public class RegisterformServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Userdao Userdao =new Userdao();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String name =req.getParameter("name");
		String email =req.getParameter("email");
		String password =req.getParameter("password");
		User user =null;
		try {
			user =Userdao.findUser(email);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//该email已经被注册
		if(user!=null)
		{
			 resp.setCharacterEncoding("UTF-8");
			 resp.getWriter().print("该邮箱已经被注册");
		}
		else {
			user=new User();
			user.setEmail(email);
			user.setPassword(password);
			java.util.Date date =new java.util.Date();
			Date sqdate= new Date(date.getTime());
			user.setRegister_date(sqdate);
			user.setUsername(name);
			try {
				Userdao.addUser(user);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			 resp.setCharacterEncoding("UTF-8");
			 StringBuilder builder = new StringBuilder(); 
			 builder.append(" <html>"); 
			 builder.append(" <head>"); 
			 builder.append(" </head>"); 
			 builder.append(" <body>"); 
			 builder.append("注册成功，<a herf=\"/webmusic/views/usermain.jsp\">首页</a>");
			 builder.append(" </body>"); 
			 builder.append(" </html>");  
			 resp.getWriter().print(builder.toString());
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
