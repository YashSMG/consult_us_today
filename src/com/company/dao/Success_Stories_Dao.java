package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.company.bean.SuccessStories_Bean;

public class Success_Stories_Dao {

	
	public static List<SuccessStories_Bean> getAllStories(){
		List<SuccessStories_Bean> list = new ArrayList<SuccessStories_Bean>();
		
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_success_stories");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				SuccessStories_Bean bean = new SuccessStories_Bean();
				
				bean.setName(rs.getString("name"));
				bean.setDesignation(rs.getString("designation"));
				bean.setCompany(rs.getString("company"));
				bean.setDescription(rs.getString("description"));
				bean.setImage(rs.getString("image"));
				
				list.add(bean);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
		
	}
} 
