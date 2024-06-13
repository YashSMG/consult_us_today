package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.company.bean.AboutUs_Bean;
import com.company.controller.AboutUs;;

public class AboutUs_Dao {

	
	public static List<AboutUs_Bean> getAboutUs(){
		List<AboutUs_Bean>list=new ArrayList<AboutUs_Bean>();
		
		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("select * from tbl_about");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				AboutUs_Bean p=new AboutUs_Bean();
				p.setId(rs.getInt("id"));
				p.setName(rs.getString("name"));
				p.setDesignation(rs.getString("designation"));
				p.setDescription(rs.getString("description"));
				p.setImage(rs.getString("image"));
				
				list.add(p);			
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;		
	}
	
	
	public static AboutUs_Bean get_CEO() {
		AboutUs_Bean bean = new AboutUs_Bean();
		
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_about where designation='CEO'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
			bean.setId(rs.getInt("id"));
			bean.setName(rs.getString("name"));
			bean.setDesignation(rs.getString("designation"));
			bean.setDescription(rs.getString("description"));
			bean.setImage(rs.getString("image"));
		    }
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	
	public static AboutUs_Bean getCOFOUNDER(){
		AboutUs_Bean bean = new AboutUs_Bean();
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_about where designation='Co-Founder'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
			bean.setId(rs.getInt("id"));
			bean.setName(rs.getString("name"));
			bean.setDesignation(rs.getString("designation"));
			bean.setDescription(rs.getString("description"));
			bean.setImage(rs.getString("image"));
		    }
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return bean;
	}
	
	public static AboutUs_Bean getFOUNDER() {
		AboutUs_Bean bean = new AboutUs_Bean();
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_about where designation='Founder'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
			bean.setId(rs.getInt("id"));
			bean.setName(rs.getString("name"));
			bean.setDesignation(rs.getString("designation"));
			bean.setDescription(rs.getString("description"));
			bean.setImage(rs.getString("image"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	
	public static AboutUs_Bean getDIRECTOR() {
		AboutUs_Bean bean = new AboutUs_Bean();
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_about where designation='Director'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
			bean.setId(rs.getInt("id"));
			bean.setName(rs.getString("name"));
			bean.setDesignation(rs.getString("designation"));
			bean.setDescription(rs.getString("description"));
			bean.setImage(rs.getString("image"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	
	public static AboutUs_Bean getMember(int id) {
		AboutUs_Bean bean = new AboutUs_Bean();
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_about where id='"+id+"' ");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
			bean.setId(rs.getInt("id"));
			bean.setName(rs.getString("name"));
			bean.setDesignation(rs.getString("designation"));
			bean.setDescription(rs.getString("description"));
			bean.setImage(rs.getString("image"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	
	
	public static int deleteAboutUs(int id) {
		int status=0;
	
		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("delete from tbl_about where id=?");
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
