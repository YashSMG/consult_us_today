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

import com.company.bean.Sender;
import com.company.dao.DB;
import com.company.dao.Encryption;

@MultipartConfig(fileSizeThreshold = 1024*1024*2,
maxFileSize = 1024*1024*10,
	maxRequestSize = 1024*1024*50)

@WebServlet("/CollegeRegistration")
public class CollegeRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "/img/";
    
    public CollegeRegistration() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String savepath="F:\\CounsultUsToday_WEB-ADMIN\\WebContent"+SAVE_DIR;
		
		File fileSaveDir=new File(savepath);
		
		
		String name=request.getParameter("name");
		String mou_no=request.getParameter("mou_no");
		String contact_no=request.getParameter("contact_no");
		long contact_no1=Long.parseLong(contact_no);
		String email1=request.getParameter("email");
		String address=request.getParameter("address");
		String password=request.getParameter("password");
		String password1 = Encryption.encrypt(password);
		
		String city=request.getParameter("city");

		
		InputStream inputStream1 = null; // input stream of the upload file
   		Part filePart1 = request.getPart("image");
   		
   		
   		String company_name = filePart1.getSubmittedFileName();
   		filePart1.write(savepath+company_name);
		
   		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("insert into tbl_colleges_reg(name,mou_no,contact_no,email,address,"
										+ "password,city,clg_image,clg_reg_date)values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2,mou_no);
			ps.setLong(3,contact_no1);
			ps.setString(4,email1);
			ps.setString(5,address);
			ps.setString(6,password1);
			ps.setString(7,city);
			 String com_image = SAVE_DIR+company_name;
	        ps.setString(8,com_image);
	         
	        java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
	        ps.setDate(9, sqlDate);	         
			
	         int row1 = ps.executeUpdate();
	         
	         final String email = "rannopgupta@gmail.com";
	 		final String pass = "pooja14";
	 		String subject = "Registration of user";
	 		String msg = "Dear "+email1+",\n\nWelcome to CunsultUsToday!, \n\nPlease find below your Username And Password :\n"
						+"Username :"+email1+"\n"+
						 "Password :"+password+"\n\n\n"+
												
						"\n\nThanks and Welcome aboard! \n\n\nRegards,\nCunsultUsToday";				
	         
	         if (row1 > 0) {  
	        	 Sender.send(email1, subject, msg, email, pass);
	        	response.sendRedirect("web_Login.jsp");
	         }
 
		}
		catch(Exception e)
		{
			e.printStackTrace();		
		}
		
   		
		
	}

}
