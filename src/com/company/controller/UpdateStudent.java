package com.company.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.company.dao.DB;


@MultipartConfig(fileSizeThreshold = 1024*1024*2,
maxFileSize = 1024*1024*10,
	maxRequestSize = 1024*1024*50)

@WebServlet("/UpdateStudent")
public class UpdateStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "/img/";
   private String studentimg;
    public UpdateStudent() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String savepath = "D:\\OnlyJAVA-Project\\CounsultUsToday_WEB-ADMIN\\WebContent"+SAVE_DIR;
		
		String name	= request.getParameter("name");
	 	String email1 = request.getParameter("email");
	 	String contact_no = request.getParameter("contact");
	 	long con = Long.parseLong(contact_no);
	 	String passout_id = request.getParameter("passout");
	 	System.out.println("passout status :"+passout_id);
	 	int pass1 = Integer.parseInt(passout_id);     
	 	String passout_year = request.getParameter("passout_yr");
	 	int pass_yr = Integer.parseInt(passout_year);
	 	String stream = request.getParameter("stream");
	 	String address = request.getParameter("address");
	 	String qualification = request.getParameter("qualification");
	 	String dob = request.getParameter("dob");
	 	Date date = Date.valueOf(dob);
	 	String gender = request.getParameter("gender"); 
	 	String clg_id = request.getParameter("college");
	 	int clg = Integer.parseInt(clg_id);
	 	String city = request.getParameter("city");
	
     
   	   	Part filePart1 = request.getPart("image");
   	   	System.out.println("Image Data :"+filePart1);
   	   
   			
   	   	studentimg = filePart1.getSubmittedFileName();
   	/*if(company_name  != null || company_name != "") {
   	   System.out.println("Image Name :"+company_name);
   	   filePart1.write(savepath+company_name);
   		}*/
   		String img_pth = request.getParameter("img_pth");
   		
   		String id = request.getParameter("stdid");
   		int stdid = Integer.parseInt(id);
   		
   	   try {
   		   
   		   Connection conn = DB.getcon();
   		   PreparedStatement ps = conn.prepareStatement("update tbl_student_reg set passout_id=?, passout_year=?,clg_id=?,"
   		   		+ "name=?,email=?,contact_no=?,address=?,stream=?,qualification=?,dob=?,gender=?,city=? "
   		   		+ " where std_id=?"); /*std_image=?,*/
   		  
   		   ps.setInt(1, pass1);
   		   ps.setInt(2, pass_yr);
   		   ps.setInt(3, clg);
   		   ps.setString(4, name);
   		   ps.setString(5, email1);
   		   ps.setLong(6, con);
   		   ps.setString(7, address);
   		   ps.setString(8, stream);
   		   ps.setString(9, qualification);
   		   ps.setDate(10, date);
   		   ps.setString(11, gender);
   		   ps.setString(12, city);
   		   
   		   /*if(company_name  != null || company_name != "") {
   		   String com_image = SAVE_DIR+company_name;
   		   ps.setString(13,com_image);
   		   }else {
   			   ps.setString(13,img_pth);
   		   }*/
   		   
   		   ps.setInt(13, stdid);
   		   
   		   int row = ps.executeUpdate();
   		   if(row > 0) {
   			response.sendRedirect("web_studentprofile.jsp");
   		   }else {
   			   response.sendRedirect("web_updateStudent.jsp");
   		   }
   		   
   	   }catch(Exception e) {
   		   e.printStackTrace();
   	   }
		
		
	}

}
