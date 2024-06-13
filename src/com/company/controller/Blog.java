package com.company.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.company.dao.DB;

@MultipartConfig(fileSizeThreshold = 1024*1024*2,
maxFileSize = 1024*1024*10,
	maxRequestSize = 1024*1024*50)

@WebServlet("/Blog")
public class Blog extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "/img/";
       
    
    public Blog() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String savepath="D:\\OnlyJAVA-Project\\CounsultUsToday_WEB-ADMIN\\WebContent"+SAVE_DIR;
		File fileSaveDir=new File(savepath);
		
		String title = request.getParameter("title");
		String slug = request.getParameter("slug");
		String description = request.getParameter("description");
		
		
		InputStream inputStream1 = null; // input stream of the upload file
   		Part image = request.getPart("image");
   		
   		
   		String img_name = image.getSubmittedFileName();
   		image.write(savepath+img_name);
		
		
		try {
			
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("insert into tbl_blog(title,posted_by,image,description) values(?,?,?,?)");
			ps.setString(1, title);
			ps.setString(2, slug);
			String bimg = SAVE_DIR+img_name;
			ps.setString(3, bimg);
			ps.setString(4, description);
			
			int i = ps.executeUpdate();
		
			if(i>0) {
				response.sendRedirect("Dashboard.jsp");
			}else {
				response.sendRedirect("500.html");
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
