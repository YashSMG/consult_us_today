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
import javax.servlet.http.Part;

import com.company.bean.Sender;
import com.company.dao.DB;
import com.company.dao.Encryption;


@MultipartConfig(fileSizeThreshold = 1024*1024*2,
maxFileSize = 1024*1024*10,
	maxRequestSize = 1024*1024*50)

@WebServlet("/StudentRegistration")
public class StudentRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/*private static final String SAVE_DIR = "/img/";*/
    
    public StudentRegistration() {
        super();
    }

	
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*String savepath="D:\OnlyJAVA-Project\CounsultUsToday_WEB-ADMIN\WebContent"+SAVE_DIR;*/
		/*File fileSaveDir=new File(savepath);*/
				
		 String name=request.getParameter("name");
		 String email1=request.getParameter("email");
		 String contact_no=request.getParameter("contact");
		 long con = Long.parseLong(contact_no);
		 String passout_id=request.getParameter("passout");
	     int pass1=Integer.parseInt(passout_id);
	     String clg_id=request.getParameter("college");
	     int clg=Integer.parseInt(clg_id);
	     String password=request.getParameter("password");
	       
	       String password1 = Encryption.encrypt(password);
	       
	       /*
	       String passout_year=request.getParameter("passout_yr");
	       int pass_yr=Integer.parseInt(passout_year);
	       String stream=request.getParameter("stream");
	       String address=request.getParameter("address");
	       String qualification=request.getParameter("qualification");
	       String dob=request.getParameter("dob");
	       Date date=Date.valueOf(dob);
	       String gender=request.getParameter("gender");
	       String city=request.getParameter("city");
	       InputStream inputStream1 = null; 
	   	   Part filePart1 = request.getPart("image");
	   		String company_name = filePart1.getSubmittedFileName();
	   		filePart1.write(savepath+company_name);
	   		*/
	       
	   		

	   		try {
				Connection conn=DB.getcon();
				PreparedStatement ps=conn.prepareStatement("insert into tbl_student_reg(passout_id, clg_id,"
								+ "name,email,contact_no,password,std_reg_date)"
								+ " values(?,?,?,?,?,?,?) ");
				
				ps.setInt(1, pass1);	
				ps.setInt(2,clg);
				ps.setString(3,name);
				ps.setString(4,email1);
				ps.setLong(5, con);
				ps.setString(6, password1);
				java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		         ps.setDate(7, sqlDate);
				
				/*String com_image = SAVE_DIR+company_name;
		         ps.setString(14,com_image);*/
		         
		         
		      

				
		         int row1 = ps.executeUpdate();
		         
		        final String email = "kiransayankar091@gmail.com";
		 		final String pass = "sayankar14";
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
