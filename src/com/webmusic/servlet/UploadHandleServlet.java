package com.webmusic.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.webmusic.dao.Mvdao;
import com.webmusic.dao.Songdao;
import com.webmusic.model.Mv;
import com.webmusic.model.Song;



/** 
 * @author mxs 
 * @E-mail:308348194@qq.com 
 * @version ����ʱ�䣺2016��3��4�� ����11:17:01  
 */
public class UploadHandleServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Songdao songdao =new Songdao();
	private Mvdao mvdao =new Mvdao();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                //�õ��ϴ��ļ��ı���Ŀ¼�����ϴ����ļ������WEB-INFĿ¼�£����������ֱ�ӷ��ʣ���֤�ϴ��ļ��İ�ȫ
                String savePath = request.getSession().getServletContext().getRealPath("/")+"upload\\";
                System.out.println("savepath:"+savePath);
                String getname=null;
                String getplayer=null;
                String getalbum=null;
                String gettype=null;  
                String other=null;
                String filenames=null;
                String img=null;
                //�ϴ�ʱ���ɵ���ʱ�ļ�����Ŀ¼
                String tempPath = this.getServletContext().getRealPath("/WEB-INF/temp");
                File tmpFile = new File(tempPath);
                if (!tmpFile.exists()) {
                    //������ʱĿ¼
                    tmpFile.mkdir();
                }
                
                //��Ϣ��ʾ
                String message = "";
                try{
                    //ʹ��Apache�ļ��ϴ���������ļ��ϴ����裺
                    //1������һ��DiskFileItemFactory����
                    DiskFileItemFactory factory = new DiskFileItemFactory();
                    //���ù����Ļ������Ĵ�С�����ϴ����ļ���С�����������Ĵ�Сʱ���ͻ�����һ����ʱ�ļ���ŵ�ָ������ʱĿ¼���С�
                    factory.setSizeThreshold(1024*100);//���û������Ĵ�СΪ100KB�������ָ������ô�������Ĵ�СĬ����10KB
                    //�����ϴ�ʱ���ɵ���ʱ�ļ��ı���Ŀ¼
                    factory.setRepository(tmpFile);
                    //2������һ���ļ��ϴ�������
                    ServletFileUpload upload = new ServletFileUpload(factory);
     
                     //����ϴ��ļ�������������
                    upload.setHeaderEncoding("UTF-8"); 
                    //3���ж��ύ�����������Ƿ����ϴ���������
                    if(!ServletFileUpload.isMultipartContent(request)){
                        //���մ�ͳ��ʽ��ȡ����
                        return;
                    }
                    
                    //�����ϴ������ļ��Ĵ�С�����ֵ��Ŀǰ������Ϊ1024*1024�ֽڣ�Ҳ����2MB
                    upload.setFileSizeMax(1024*1024*200);
                    //�����ϴ��ļ����������ֵ�����ֵ=ͬʱ�ϴ��Ķ���ļ��Ĵ�С�����ֵ�ĺͣ�Ŀǰ����Ϊ10MB
                    //4��ʹ��ServletFileUpload�����������ϴ����ݣ�����������ص���һ��List<FileItem>���ϣ�ÿһ��FileItem��Ӧһ��Form����������
                    List<FileItem> list = upload.parseRequest(request);
                    for(int i=0;i<list.size();i++){
                        //���fileitem�з�װ������ͨ�����������
                        if(list.get(i).isFormField()){
                            String name = list.get(i).getFieldName();
                            //�����ͨ����������ݵ�������������
                            String value = list.get(i).getString("UTF-8");
                            //value = new String(value.getBytes("iso8859-1"),"UTF-8");
                            if(name.equals("songname"))
                            {
                          	  getname=value;
                          	System.out.println(name+"---"+value);
                            }
                            else if(name.equals("player"))
                            {
                          	  getplayer=value;
                          	System.out.println(name+"---"+value);
                            }
                            else if(name.equals("album"))
                            {
                          	  getalbum=value;
                          	System.out.println(name+"---"+value);
                            }
                            else if(name.equals("type"))
                            {
                          	  gettype=value;      
                          	System.out.println(name+"---"+value);
                            }
                            else if(name.equals("other")) {
								other=value;
								System.out.println(name+"---"+value);
							}
                        }else{//���fileitem�з�װ�����ϴ��ļ�
                            //�õ��ϴ����ļ����ƣ�
                            String filename = list.get(i).getName();
                            System.out.println(filename);
                            if(filename==null || filename.trim().equals("")){
                                continue;
                            }
                            //ע�⣺��ͬ��������ύ���ļ����ǲ�һ���ģ���Щ������ύ�������ļ����Ǵ���·���ģ��磺  c:\a\b\1.txt������Щֻ�ǵ������ļ������磺1.txt
                            //�����ȡ�����ϴ��ļ����ļ�����·�����֣�ֻ�����ļ�������
                            filename = filename.substring(filename.lastIndexOf("\\")+1);
                            //�õ��ϴ��ļ�����չ��
                            String fileExtName = filename.substring(filename.lastIndexOf(".")+1);
                            //�����Ҫ�����ϴ����ļ����ͣ���ô����ͨ���ļ�����չ�����ж��ϴ����ļ������Ƿ�Ϸ�
                            System.out.println("�ϴ����ļ�����չ���ǣ�"+fileExtName);
                            if(fileExtName.equals("jpg"))
                            {
                            	img=filename;
                            }
                            else {
								filenames=filename;
							}
                            //��ȡitem�е��ϴ��ļ���������
                            InputStream in = list.get(i).getInputStream();
                            //�õ��ļ����������
                            String saveFilename = filename;
                            //����һ���ļ������
                            FileOutputStream out = new FileOutputStream( savePath+"\\" + saveFilename);
                            //����һ��������
                            byte buffer[] = new byte[1024];
                            //�ж��������е������Ƿ��Ѿ�����ı�ʶ
                            int len = 0;
                            //ѭ�������������뵽���������У�(len=in.read(buffer))>0�ͱ�ʾin���滹������
                            while((len=in.read(buffer))>0){
                                //ʹ��FileOutputStream�������������������д�뵽ָ����Ŀ¼(savePath + "\\" + filename)����
                                out.write(buffer, 0, len);
                            }
                            //�ر�������
                            in.close();
                            //�ر������
                            out.close();
                            //ɾ�������ļ��ϴ�ʱ���ɵ���ʱ�ļ�
                            //item.delete();
                            message = "�ļ��ϴ��ɹ���";
                            //�����ַ�����ݿ�
               
                        }
                        
              
                    }
                }catch (FileUploadBase.FileSizeLimitExceededException e) {
                    e.printStackTrace();
                    request.setAttribute("message", "�����ļ��������ֵ������");
                    request.getRequestDispatcher("/message.jsp").forward(request, response);
                    return;
                }catch (FileUploadBase.SizeLimitExceededException e) {
                    e.printStackTrace();
                    request.setAttribute("message", "�ϴ��ļ����ܵĴ�С�������Ƶ����ֵ������");
                    request.getRequestDispatcher("/message.jsp").forward(request, response);
                    return;
                }catch (Exception e) {
                    message= "�ļ��ϴ�ʧ�ܣ�";
                    e.printStackTrace();
                }
                //�ϴ�����
                if(gettype.equals("song")){
  
                Song song =new  Song();
                song.setSongname(getname);
                Date date =new  Date();
                java.sql.Date sqdate =new java.sql.Date(date.getTime());
                song.setUploadtime(sqdate);
                song.setPlayer(getplayer);
                song.setAlbum(getalbum);
                song.setOther(other);
                song.setSongsrc("/webmusic/upload/"+filenames);
                song.setImg("/webmusic/upload/"+img);
                try {
					songdao.addSong(song);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
                }
                //MV
                else {
					Mv  mv =new Mv();
					mv.setMvname(getname);
					Date date =new  Date();
                    java.sql.Date sqdate =new java.sql.Date(date.getTime());
                    mv.setUploadtime(sqdate);
                    mv.setPlayer(getplayer);
                    mv.setAlbum(getalbum);
                    mv.setOther(other);
                    mv.setMvsrc("/webmusic/upload/"+filenames);
                    mv.setImg("/webmusic/upload/"+img);
					try {
						mvdao.addMv(mv);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
                request.setAttribute("message",message);
                request.getRequestDispatcher("/views/message.jsp").forward(request, response);
    }
    
  
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}