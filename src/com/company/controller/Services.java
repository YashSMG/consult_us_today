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

@WebServlet("/Services")
public class Services extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "/img/";
   
    public Services() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String savepath="D:\\OnlyJAVA-Project\\CounsultUsToday_WEB-ADMIN\\WebContent"+SAVE_DIR;
		File fileSaveDir=new File(savepath);
		
		String srvtype = request.getParameter("title");
		String shortdesc = request.getParameter("shortDesc");
		String longdesc = request.getParameter("longDesc");
		
		InputStream inputStream1 = null; // input stream of the upload file
   		Part image = request.getPart("image");
   		
   		
   		String img_name = image.getSubmittedFileName();
   		image.write(savepath+img_name);
		
   		try {
   			
   			Connection con = DB.getcon();
   			PreparedStatement ps = con.prepareStatement("insert into tbl_services(title,short_description,long_description,image) "
   					+ " values(?,?,?,?)");
   			ps.setString(1, srvtype);
   			ps.setString(2, shortdesc);
   			ps.setString(3, longdesc);
   			String img = SAVE_DIR+img_name;
   			ps.setString(4, img);
   			
   			int id = ps.executeUpdate();
   			
   			if(id>0) {
   				response.sendRedirect("Dashboard.jsp");
   			}else {
   				response.sendRedirect("500.html");
   			}
   			
   			
   			
   		}catch(Exception e) {
   			e.printStackTrace();
   		}
		
		
		
	}

}
