package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.company.bean.Contact_Bean;

public class Contact_Dao {
	public static int saveContactUs(Contact_Bean c) {
	int status=0;
	try {
		Connection con=DB.getcon();
		PreparedStatement ps=con.prepareStatement("insert into tbl_contactus(name,email,message)" + " values(?,?,?)");
		
		ps.setString(1, c.getName());
		ps.setString(2, c.getEmail());
		ps.setString(3, c.getMessage());
		
		status = ps.executeUpdate();
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return status;
	}
	
	public static List<Contact_Bean> getContacusDetails(){
		List<Contact_Bean> list = new ArrayList<Contact_Bean>();
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_contactus");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Contact_Bean bean = new Contact_Bean();
				bean.setContact_id(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setEmail(rs.getString("email"));
				bean.setMessage(rs.getString("message"));
				bean.setcDate(rs.getDate("created"));
				
				list.add(bean);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	public static Contact_Bean viewContactUs(int id){
		Contact_Bean bean = null;
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_contactus where id='"+id+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
			    bean = new Contact_Bean();
				bean.setContact_id(rs.getInt("id"));
				bean.setName(rs.getString("name"));
				bean.setEmail(rs.getString("email"));
				bean.setMessage(rs.getString("message"));
				bean.setcDate(rs.getDate("created"));			
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return bean;
	}

	
	
	public static int deleteContact(int id) {
		int status=0;
	
		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("delete from tbl_contactus where id=?");
			ps.setInt(1, id);
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	

}
