
package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.company.bean.College_Bean;

public class College_Dao {
	
	public static List<College_Bean> getAllColleges(){
		List<College_Bean> list = new ArrayList<College_Bean>();
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_colleges_reg");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				College_Bean bean = new College_Bean();
				bean.setClg_id(rs.getInt("clg_id"));
				bean.setName(rs.getString("name"));
				bean.setEmail(rs.getString("email"));
				bean.setAddress(rs.getString("address"));
				bean.setContact_no(rs.getLong("contact_no"));
				bean.setCity(rs.getString("city"));
				bean.setImage(rs.getString("clg_image"));
				bean.setLogin_sts(rs.getString("login_sts"));
				bean.setClg_priority(rs.getString("clg_priority"));
				
				list.add(bean);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public static College_Bean getCollegeById(int id) {
		College_Bean c=null;
		try {
			 Connection con=DB.getcon();
			 PreparedStatement ps=con.prepareStatement("select * from tbl_colleges_reg where clg_id=?");
			 ps.setInt(1,id);
			 ResultSet rs=ps.executeQuery();
			 
			 while(rs.next()) {
				 c= new College_Bean();
				  c.setClg_id(rs.getInt("clg_id"));
				  c.setName(rs.getString("name"));
				  c.setMou_no(rs.getString("mou_no"));
				  c.setContact_no(rs.getLong("contact_no"));
				  c.setEmail(rs.getString("email"));
				  c.setAddress(rs.getString("address"));
				  c.setPassword(rs.getString("password"));
				  c.setCity(rs.getString("city")); 
				  c.setImage(rs.getString("clg_image"));
				  
			 }
			 
		}catch(Exception e) {
			e.printStackTrace();
		}
		return c;
	}
	
	
	
	public static int registerCollege(College_Bean cbean)
	{
		int status=0;
		
		try {
			
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("insert into tbl_colleges_reg(name,mou_no,contact_no,email,address,password,city)values(?,?,?,?,?,?,?)");
			ps.setString(1,cbean.getName());
			ps.setString(2,cbean.getMou_no());
			ps.setLong(3,cbean.getContact_no());
			ps.setString(4,cbean.getEmail());
			ps.setString(5,cbean.getAddress());
			ps.setString(6,cbean.getPassword());
			ps.setString(7,cbean.getCity());
		
			status=ps.executeUpdate();
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		
		}
		System.out.println("Method executed");
		return status;
	}
	
	public static College_Bean getCollegeRecordById(int id) {
		College_Bean c=null;
		try {
			 Connection con=DB.getcon();
			 PreparedStatement ps=con.prepareStatement("select * from tbl_colleges_reg where clg_id=?");
			 ps.setInt(1,id);
			 ResultSet rs=ps.executeQuery();
			 
			 while(rs.next()) {
				 
				  c.setClg_id(rs.getInt("clg_id"));
				  c.setName(rs.getString("name"));
				  c.setMou_no(rs.getString("mou_no"));
				  c.setContact_no(rs.getLong("contact_no"));
				  c.setEmail(rs.getString("email"));
				  c.setAddress(rs.getString("address"));
				  c.setPassword(rs.getString("password"));
				  c.setCity(rs.getString("city")); 
				  c.setImage(rs.getString("clg_image"));
			 }
			 
		}catch(Exception e) {
			e.printStackTrace();
		}
		return c;
	}
	
	public static int deleteCollege(int id) {
		int status=0;
	
		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("delete from tbl_colleges_reg where clg_id=?");
			ps.setInt(1, id);
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	
	public static int enableCollege(int id) {
		int status = 0;
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select login_sts from tbl_colleges_reg where clg_id='"+id+"'");
			ResultSet rs = ps.executeQuery();
			rs.next();
			String LoginStatus = rs.getString(1);
			
				ps = con.prepareStatement("update tbl_colleges_reg set login_sts=? where clg_id = '"+id+"'" );
			if(LoginStatus.equals("Disable")) {
			ps.setString(1,"Enable");
			}
			else {
				ps.setString(1, "Disable");
			}
			
			ps.executeUpdate();
					
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}
	
	
	public static int changeClgPriority(int id) {
		int status = 0;
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select clg_priority from tbl_colleges_reg where clg_id='"+id+"'");
			ResultSet rs = ps.executeQuery();
			rs.next();
			String LoginStatus = rs.getString(1);
			
			ps = con.prepareStatement("update tbl_colleges_reg set clg_priority=? where clg_id = '"+id+"'" );
			if(LoginStatus.equals("Unpaid")) {
				ps.setString(1,"Paid");
			}
			else {
				ps.setString(1, "Unpaid");
			}
			ps.executeUpdate();		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
	

}
