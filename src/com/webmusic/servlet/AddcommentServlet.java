package com.webmusic.servlet;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.webmusic.dao.Commentdao;
import com.webmusic.model.Comments;
import com.webmusic.model.User;

/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version 创建时间：2016年3月28日 下午3:33:42  
 */
public class AddcommentServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	 Commentdao  commentdao =new Commentdao();
		public static Gson gsonBuilderWithExpose = new GsonBuilder()
		.setDateFormat("yyyy-MM-dd HH:mm:ss").create();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map<String,Object> map = new HashMap<String,Object>(); 
		Comments comments =new Comments();
		User user =(User) req.getSession().getAttribute("user");
	    String commentscontext=req.getParameter("commentscontext");
	    String fortype = req.getParameter("fortype");
	    String enetityid = req.getParameter("enetityid");
	    if(commentscontext!=null&&fortype!=null&&enetityid!=null){
	    	System.out.println("username:"+user.getUsername()+"---type:"+fortype+"---id:"+enetityid+"---comment:"+commentscontext);
	    comments.setFortype(Integer.valueOf(fortype));
	    comments.setEnetityid(Integer.valueOf(enetityid));
	    comments.setCommentscontext(commentscontext);
	    Date date =new  Date();
	    java.sql.Date sqdaDate = new java.sql.Date(date.getTime());
	    comments.setCommentsdate(sqdaDate);
	    comments.setUsername(user.getUsername());
	    try {
			commentdao.addComment(comments);
			map.put("statue", 0);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			map.put("statue", 1);
		}
	    }
	    else {
	    	map.put("statue", 1);
		}
	    ResponseJson(resp, map);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	
	
	private void  ResponseJson(HttpServletResponse resp ,Map<String, Object> map) throws IOException
	{
		String json  =gsonBuilderWithExpose.toJson(map);
		resp.setCharacterEncoding("UTF-8");
		resp.flushBuffer();
		resp.getWriter().write(json);
		resp.getWriter().flush();  
		resp.getWriter().close();
	}
	

}
