package com.webmusic.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webmusic.dao.Mvdao;
import com.webmusic.dao.Songdao;
import com.webmusic.dao.Userdao;
import com.webmusic.model.Mv;
import com.webmusic.model.Song;
import com.webmusic.model.User;

/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version ï¿½ï¿½ï¿½ï¿½Ê±ï¿½ä£º2016ï¿½ï¿½3ï¿½ï¿½4ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½10:04:35  
 */
public class Loginservlet extends HttpServlet {

	/**
	 * 
	 */

	private static final long serialVersionUID = 1L;
	Userdao  userdao =new Userdao();
	Songdao  Songdao = new Songdao();
	Mvdao    mvdao =new Mvdao();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	 String  email= req.getParameter("email");
		User user=null;
	 try {
	 user= userdao.findUser(email);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 String passwd = req.getParameter("passwd");
	 System.out.println(email+"-----"+passwd);
	 if(user!=null&&user.getPassword().equals(passwd))
	 {
		 HttpSession session =req.getSession();
		 session.setAttribute("user", user);
		 System.out.println("usertype"+user.getUsertype());
		 //ÆÕÍ¨ÓÃ»§
		 if(user.getUsertype()==0)
		 {
			 List<Song> latesong = new ArrayList<Song>();
			 List<Mv> latemv =new ArrayList<Mv>();
			 try {
				latesong = Songdao.latetysong();
				latemv  =mvdao.latetyMv();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 for (int i = 0; i < latesong.size(); i++) {
				System.out.println("¸èÊÖÃû"+latesong.get(i).getPlayer());
			}
			 req.setAttribute("latesonglist", latesong);
			 req.setAttribute("latemvlist", latemv);
			 req.getRequestDispatcher("/views/usermain.jsp").forward(req,resp);  
		 }
	    //admin
		 else {
			resp.sendRedirect("/webmusic/views/admin.jsp");
		}
	 }
	 else {
		 resp.setCharacterEncoding("UTF-8");
		 resp.getWriter().print("email»òÕßÃÜÂë´íÎó");
	}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
}
