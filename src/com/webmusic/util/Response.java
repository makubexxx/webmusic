package com.webmusic.util;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

public class Response {

	public static void response(String Json,HttpServletResponse response)
	{
		try {
			//�����ݷ���
			response.setCharacterEncoding("UTF-8");
			response.flushBuffer();
			response.getWriter().write(Json);
			response.getWriter().flush();  
			response.getWriter().close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
