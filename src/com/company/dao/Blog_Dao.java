package com.company.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import com.company.bean.Blog_Bean;

public class Blog_Dao {

	
	public static List<Blog_Bean> getBlogASC(){
		
		List<Blog_Bean> list = new ArrayList<Blog_Bean>();
		
		try {
			
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_blog order by id asc limit 3 ");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Blog_Bean bean = new Blog_Bean();
					bean.setBlogid(rs.getInt("id"));
					bean.setTitle(rs.getString("title"));
					bean.setPosted_by(rs.getString("posted_by"));
					bean.setDescription(rs.getString("description"));
					bean.setPublished(rs.getDate("published"));
					bean.setImage(rs.getString("image"));
				
				list.add(bean);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}	
	
public static List<Blog_Bean> getBlogDESC(){
		
		List<Blog_Bean> list = new ArrayList<Blog_Bean>();
		
		try {
			
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_blog order by id desc limit 3 ");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Blog_Bean bean = new Blog_Bean();
					bean.setBlogid(rs.getInt("id"));
					bean.setTitle(rs.getString("title"));
					bean.setPosted_by(rs.getString("posted_by"));
					bean.setDescription(rs.getString("description"));
					bean.setPublished(rs.getDate("published"));
					bean.setImage(rs.getString("image"));
				
				list.add(bean);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}	
	

public static int deleteBlog(int id) {
	int status=0;

	try {
		Connection con=DB.getcon();
		PreparedStatement ps=con.prepareStatement("delete from tbl_blog where id=?");
		ps.setInt(1, id);
		status=ps.executeUpdate();
		con.close();
	}
	catch(Exception e) {
		System.out.println(e);
	}
	return status;
}
	
public static Blog_Bean  getBlog(int id){
	Blog_Bean bean = null;
	try {
		
		Connection con = DB.getcon();
		PreparedStatement ps = con.prepareStatement("select * from tbl_blog where id='"+id+"'");
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
				bean = new Blog_Bean();
				bean.setBlogid(rs.getInt("id"));
				bean.setTitle(rs.getString("title"));
				bean.setPosted_by(rs.getString("posted_by"));
				bean.setDescription(rs.getString("description"));
				bean.setPublished(rs.getDate("published"));
				bean.setImage(rs.getString("image"));
			
			
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return bean;
}	

	
}
