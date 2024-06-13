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

@WebServlet("/AboutUs")
public class AboutUs extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "/img/";   
   
    public AboutUs() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String savepath="D:\\OnlyJAVA-Project\\CounsultUsToday_WEB-ADMIN\\WebContent"+SAVE_DIR;
		File fileSaveDir=new File(savepath);
		
		
		String name = request.getParameter("name");
	    String designation = request.getParameter("designation");
	    String description = request.getParameter("description");
	 
   		InputStream inputStream1 = null; // input stream of the upload file
   		Part filePart1 = request.getPart("image");
   		
   		
   		String u_name = filePart1.getSubmittedFileName();
   		filePart1.write(savepath+u_name);
   		
   		
   		
   		try {
   			
   			Connection con = DB.getcon();
   			PreparedStatement ps = con.prepareStatement("insert into tbl_about(name,designation,description,image) "
   					+ "values(?,?,?,?)");
   			ps.setString(1, name);
   			ps.setString(2, designation);
   			ps.setString(3, description);
   			
   			String image = SAVE_DIR+u_name;
   			ps.setString(4, image);
   			
   			int row = ps.executeUpdate();
   			
   			if(row > 0) {
   				response.sendRedirect("Dashboard.jsp");
   			}else {
   				
   				response.sendRedirect("500.html");
   			}
   			
   			
   		}catch(Exception e) {
   			e.printStackTrace();
   		}
   		
	}

}
