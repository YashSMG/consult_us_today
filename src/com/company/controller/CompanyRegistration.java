package com.company.controller;


import java.io.File;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.Part;

import com.company.bean.*;
import com.company.dao.DB;
import com.company.dao.Encryption;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
 import java.util.UUID;
 import java.sql.Timestamp;



@MultipartConfig(fileSizeThreshold = 1024*1024*2,
maxFileSize = 1024*1024*10,
	maxRequestSize = 1024*1024*50)

@WebServlet("/ImageUpload")
public class CompanyRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "/img/";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompanyRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		String savepath="F:\\CounsultUsToday_WEB-ADMIN\\WebContent"+SAVE_DIR;
		File fileSaveDir=new File(savepath);
		
		
		String name=request.getParameter("name");
	    String email1=request.getParameter("email");
	    String contact_no=request.getParameter("contact_no");
	    long contact=Long.parseLong(contact_no);
	    String password=request.getParameter("password");
	    String password1 = Encryption.encrypt(password);
	    String address=request.getParameter("address");
	    String website=request.getParameter("website");
	    String city=request.getParameter("city");
	    //String image=request.getParameter("image");
   
	    
	    
   		InputStream inputStream1 = null; // input stream of the upload file
   		Part filePart1 = request.getPart("image");
   		
   		
   		String company_name = filePart1.getSubmittedFileName();
   		filePart1.write(savepath+company_name);
   		
   		
   		//Company_Bean  bean=new Company_Bean(name,email,contact,password,address,website,city,image);
   		
   		
   		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("insert into tbl_companies_reg(name,email,contact_no,password,address,"
								+ "website,city,cmpy_img,comp_reg_date) values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2,email1);
			ps.setLong(3,contact);
			ps.setString(4,password1);
			ps.setString(5,address);
			ps.setString(6,website);
			ps.setString(7,city);
			 String com_image = SAVE_DIR+company_name;
	         ps.setString(8,com_image);

	         java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
	         ps.setDate(9, sqlDate);
			
	         int row1 = ps.executeUpdate();
	         
	         final String email = "rannopgupta@gmail.com";
	 		final String pass = "pooja14";
	 		String subject = "Registration of user";
	 		//String msg = "You are successfully registered on cunsultustoday ";
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

