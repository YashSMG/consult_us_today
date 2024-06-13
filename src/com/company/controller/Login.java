package com.company.controller;

import java.io.IOException;

import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.company.bean.College_Bean;
import com.company.bean.Company_Bean;
import com.company.bean.Student_Bean;
import com.company.dao.LoginDetails;;



@WebServlet("/Login")
public class Login extends HttpServlet {
	
 	private static final long serialVersionUID = 6007434781769479804L;
 	
	public Login() {
       super();  
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
	try {
						
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		System.out.println("Username :"+username+ " Password :"+password);
		
		
		if(username.equals("admin@gmail.com") && password.equals("admin")){
			session.setAttribute("id", 01);
			session.setAttribute("name", "Admin");
			session.setAttribute("email", "admin@gmail.com");
			session.setAttribute("usertype", "Admin");
			session.setAttribute("image", "/img/default.jpg");
			
			response.sendRedirect("Dashboard.jsp");
		}
		else if(LoginDetails.checkStudent(username,password)) 
	     {
				Student_Bean sbean=LoginDetails.studentData();
	  	   
	  	  session.setAttribute("id", sbean.getStd_id());
	   	  session.setAttribute("name", sbean.getName());
	   	  session.setAttribute("email",sbean.getEmail());
	   	  session.setAttribute("usertype", sbean.getUsertype());
	   	  session.setAttribute("image", sbean.getImage());
	   	  System.out.println("session set");
	        
	   	  response.sendRedirect("web_job_list_grid.jsp");
	        
	     }else if(LoginDetails.checkCollege(username,password))
	     {
	  	  College_Bean bean=LoginDetails.collegeData();
	  	  
	  	  session.setAttribute("id", bean.getClg_id());
	  	  session.setAttribute("name", bean.getName());
	  	  session.setAttribute("email", bean.getEmail());
	  	  session.setAttribute("usertype",bean.getUsertype());
	  	  session.setAttribute("image", bean.getImage());
	       response.sendRedirect("Dashboard.jsp");	
		
		  }
	     else if(LoginDetails.checkCompany(username,password))
	       {
	  	   
	  	  Company_Bean combean=LoginDetails.companyData();
	  	  
	  	  
	  	  session.setAttribute("id", combean.getComp_id());
	  	  session.setAttribute("name", combean.getName());
	  	  session.setAttribute("email", combean.getEmail());
	  	  session.setAttribute("usertype", combean.getUsertype()); 
	  	  session.setAttribute("image", combean.getCmpy_image());
	         response.sendRedirect("Dashboard.jsp");
	        }
		
		else{
	    	 response.sendRedirect("web_Login.jsp");
	     }
		
	}catch (SQLException e) {		
			e.printStackTrace();
		} 

	}
}
