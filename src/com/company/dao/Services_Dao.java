package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.company.bean.Services_Bean;


public class Services_Dao {

	public static List<Services_Bean> getServices() {
		
		List<Services_Bean> list = new ArrayList<Services_Bean>();
		
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_services");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Services_Bean bean = new Services_Bean();
				bean.setServiceid(rs.getInt("srv_id"));
				bean.setImage(rs.getString("image"));
				bean.setServiceType(rs.getString("title"));
				bean.setShortDesc(rs.getString("short_description"));
				bean.setLongDesc(rs.getString("long_description"));
				bean.setCreated(rs.getDate("created"));
				
				list.add(bean);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
public static Services_Bean viewServices(int id) {
		
		Services_Bean bean = null;
		
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_services where srv_id='"+id+"' ");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				bean = new Services_Bean();
				bean.setServiceid(rs.getInt("srv_id"));
				bean.setImage(rs.getString("image"));
				bean.setServiceType(rs.getString("title"));
				bean.setShortDesc(rs.getString("short_description"));
				bean.setLongDesc(rs.getString("long_description"));
				bean.setCreated(rs.getDate("created"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return bean;
	}
	
	
	public static int deleteService(int id) {
		int status=0;
	
		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("delete from tbl_services where srv_id=?");
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
