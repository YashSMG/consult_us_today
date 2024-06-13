package com.company.dao;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.company.bean.College_Bean;
import com.company.bean.Company_Bean;
import com.company.bean.Student_Bean;


public class LoginDetails {
	
	static String username;
	static String password;
	
	
	
	 public static boolean checkCollege(String n,String p) throws SQLException {
		 boolean np=false;
		 boolean pass = true;
		 
		 String pass1 = null;
		 try {
			Connection conn = DB.getcon();
			
			PreparedStatement ps = conn.prepareStatement("select password from tbl_colleges_reg where email='"+n+"'");
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
			pass1 = rs.getString(1);
			
		 username=n;
		 password=pass1;
		
		 
		 pass = Encryption.validatePass(p, pass1);
			if(pass) {
		 	 
	        PreparedStatement pst=conn.prepareStatement("select * from tbl_colleges_reg where email='"+n+"' and password='"+pass1+"' and login_sts='Enable'");			
			 rs=pst.executeQuery();
			np=rs.next();
			System.out.println("validated username and password success");
			}
			}
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
			return np;
	 }
	 
	 
	 public static boolean checkCompany(String n,String p) {
		 boolean np=false;
		 boolean pass = true;
		 
		 String pass1 = null;
		 try {
			Connection conn = DB.getcon();
			
			PreparedStatement ps = conn.prepareStatement("select password from tbl_companies_reg where email='"+n+"'");
			
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
			pass1 = rs.getString(1);
			
		 username=n;
		 password=pass1;
		 
		 pass = Encryption.validatePass(p, pass1);
		 if(pass) {
		
		 PreparedStatement pst1=conn.prepareStatement("select * from tbl_companies_reg where email='"+n+"' and password='"+pass1+"' and login_sts='Enable'");
		
		 rs=pst1.executeQuery();
		 np = rs.next();
		 System.out.print("validate username and password");
		 }
	 }
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		return np;
	 }
	 
	 
	 public static boolean checkStudent(String n,String p){
		 boolean np=false;
		 boolean pass = true;
		 String pass1 = null;
		 try {
			Connection conn = DB.getcon();
			
			PreparedStatement ps = conn.prepareStatement("select password from tbl_student_reg where email='"+n+"'");
			
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
			pass1 = rs.getString(1);
			
		 username=n;
		 password=pass1;
		 pass = Encryption.validatePass(p, pass1);
		 if(pass) {
		 
		 
		 PreparedStatement pst=conn.prepareStatement("select * from tbl_student_reg where email='"+n+"' and password='"+pass1+"' and login_sts='Enable' ");
		 rs=pst.executeQuery();
		 np=rs.next();
		 System.out.println("validate username and password");
		 }
			}
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		return np;
		 
	 }
	 
	 
	 public static College_Bean collegeData() throws SQLException {
		 College_Bean cbean=new College_Bean();
		 Connection con=DB.getcon();
		
		 PreparedStatement ps=con.prepareStatement("select * from tbl_colleges_reg where email='"+username+"' and password='"+password+"'");
		 ResultSet rs=ps.executeQuery();
		 
		 
		 while(rs.next()) {
			 cbean.setClg_id(rs.getInt("clg_id"));
			 cbean.setName(rs.getString("name"));
			 cbean.setEmail(rs.getString("email"));
			 cbean.setUsertype(rs.getString("usertype"));
			 cbean.setImage(rs.getString("clg_image"));
		 }
		 return cbean;
	 }
	
	 
	 public static Company_Bean companyData() throws SQLException {
		 Company_Bean combean=new Company_Bean();
		 Connection con=DB.getcon();
		
		 PreparedStatement ps1=con.prepareStatement("select * from tbl_companies_reg where email='"+username+"' and password='"+password+"'");
		 ResultSet rs=ps1.executeQuery();
		 
		 
		 while(rs.next()) {
			 combean.setComp_id(rs.getInt("comp_id"));
			 combean.setName(rs.getString("name"));
			 combean.setEmail(rs.getString("email"));
			 combean.setUsertype(rs.getString("usertype"));
			 combean.setCmpy_image(rs.getString("cmpy_img"));
			 
		 }
		 return combean;
	 }
	 
	 
	
	 public static Student_Bean studentData()throws SQLException{
			Student_Bean cbean=new Student_Bean();
			Connection con=DB.getcon();
			
			PreparedStatement ps=con.prepareStatement("select * from tbl_student_reg where email='"+username+"' and password='"+password+"'" );
					ResultSet rs=ps.executeQuery();
					 while(rs.next()) {
						 
						 cbean.setStd_id(rs.getInt("std_id"));
						 cbean.setName(rs.getString("name"));
						 cbean.setEmail(rs.getString("email"));
						 cbean.setUsertype(rs.getString("usertype"));
						 cbean.setImage(rs.getString("std_image"));
					 }
					 System.out.println("Student data method executed");	
					 return cbean;					
		 }

	 

}
