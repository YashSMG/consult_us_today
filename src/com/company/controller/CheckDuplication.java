package com.company.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.dao.DB;


@WebServlet("/CheckDuplication")
public class CheckDuplication extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CheckDuplication() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	 String email = request.getParameter("username");
	 System.out.println("Username :"+email);
	
	 try {
	 Connection con = DB.getcon();
	 PreparedStatement ps = con.prepareStatement("select * from tbl_student_reg where email = '"+email+"'");
	 ResultSet rs = ps.executeQuery();
	 boolean status = rs.next();
	 if(status == true) {
		 response.getWriter().write("USER_EXISTS");
		
	 }else {
		 response.getWriter().write("USER_AVAILABLE");
		
	 }
	 
	
		 
	 }catch(Exception e) {
		 e.printStackTrace();
	 }
			
			
			
	}

}
