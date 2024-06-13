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


@WebServlet("/Update_College_Profile")
@MultipartConfig(maxFileSize = 16177215)
public class Update_College_Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "/img/";
	String clg_name; 
    
    public Update_College_Profile() {
        super();
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String savepath="F:\\CounsultUsToday_WEB-ADMIN\\WebContent"+SAVE_DIR;
		File fileSaveDir=new File(savepath);
		
		 String clgId=request.getParameter("id");
         int Id = Integer.parseInt(clgId);
         
         
         String name = request.getParameter("name");
         String mou_no = request.getParameter("mou_no");
         String contact_no = request.getParameter("contact_no");
         long Contact_No = Long.parseLong(contact_no);
        		 
         String email = request.getParameter("email");
         String address = request.getParameter("address");
         String city = request.getParameter("city");
         

	       InputStream inputStream1 = null; 
	   	   Part filePart1 = request.getPart("clg_img");
	   		
	   	String clg_img_orignal = request.getParameter("clg_img_ori");
	   		
	   	if(filePart1 != null) {
	   		clg_name = filePart1.getSubmittedFileName();
	   	if(clg_name  != null || clg_name != "") {
	   		filePart1.write(savepath+clg_name);
	   	}
	   	}
         

       
 		Connection con = null;
		try {

		    con = DB.getcon();
			PreparedStatement ps = con.prepareStatement(
					"update tbl_colleges_reg set name=?, mou_no=?, contact_no=?,email=?,address=?,city=?,clg_image=?  where clg_id='"
							+ Id + "'");
			
			ps.setString(1, name);
			ps.setString(2, mou_no);
			ps.setLong(3, Contact_No);
			ps.setString(4, email);
			ps.setString(5, address);
			ps.setString(6, city);
					
			
	         if(clg_name  != null || clg_name != "") {
	   		   String clg_image = SAVE_DIR+clg_name;
	   		   		ps.setString(7,clg_image);
	   		 }else{
	   			   	ps.setString(7,clg_img_orignal);
	   	     }
	         
	
			int target = ps.executeUpdate();
			if (target > 0) {
				System.out.println("college data is updated ");
				response.sendRedirect("CollegeProfile.jsp");
			} else {
				System.out.println("college data is not updated ");
				response.sendRedirect("Update_College_Profile.jsp");
			}
		}

		catch (Exception e) {
			e.printStackTrace();

		}
	}

}
