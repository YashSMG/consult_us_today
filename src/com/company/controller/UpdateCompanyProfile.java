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

@WebServlet("/UpdateCompanyProfile")
@MultipartConfig(maxFileSize = 16177215)
public class UpdateCompanyProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "/img/";  
    
    public UpdateCompanyProfile() {
        super();
    }
	private String clg_name ;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String savepath="F:\\CounsultUsToday_WEB-ADMIN\\WebContent"+SAVE_DIR;
		File fileSaveDir=new File(savepath);
		
		 String cmpid=request.getParameter("id");
         int Id = Integer.parseInt(cmpid);
         
         
         String name = request.getParameter("name");
         String contact_no = request.getParameter("contact_no");
         long Contact_No = Long.parseLong(contact_no);
         String email = request.getParameter("email");
         String address = request.getParameter("address");
         String website = request.getParameter("website");
         String city = request.getParameter("city");

         InputStream inputStream1 = null; 
	   	   Part filePart1 = request.getPart("clg_img");
	   
	   	String clg_img_orignal = request.getParameter("clg_img_ori");
	   	if(filePart1 != null ) {
	   			clg_name = filePart1.getSubmittedFileName();
	   	if(clg_name  != null || clg_name != "") {
	   		filePart1.write(savepath+clg_name);
	   	}
	   	}
       
   
		
	   
		
       Connection con = null;
	   try
		{
		    con = DB.getcon();
		
		    PreparedStatement ps = con.prepareStatement(
					"update tbl_companies_reg set cmpy_img=?, name=?, contact_no=?, email=?, address=?,website=?, city=? "
					           + " where comp_id = '"+ Id + "' ");
			
			
		    if(clg_name  != null || clg_name != "") {
		   		   String clg_image = SAVE_DIR+clg_name;
		   		   		ps.setString(1,clg_image);
		   		 }else{
		   			   	ps.setString(1,clg_img_orignal);
		   	     }
		         
			ps.setString(2, name);
			ps.setLong(3, Contact_No);
			ps.setString(4, email);
			ps.setString(5, address);
			ps.setString(6, website);
			ps.setString(7, city);
			
			int target = ps.executeUpdate();
			if(target > 0)
			{
				System.out.println("data updated sucessfully");
				response.sendRedirect("company_profile.jsp");
			}
			else
			{
				System.out.println("data is  not updated sucessfully");
				response.sendRedirect("UpdateCompanyProfile.jsp");
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

}
