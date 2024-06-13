package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.company.bean.Notification_Bean;




public class Notification_Dao {

	
	public static int updateComp(int id) {
		int status = 0;
		
		Connection con = DB.getcon();
		try {
			PreparedStatement ps = con.prepareStatement("update tbl_job_post_comp_notifi set status='seen' where comp_id='"+id+"'");
		
			status = ps.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("Status updated");
		
		return status;
	}
	
	public static int updateStd(int id) {
		int status = 0;
		
		Connection con = DB.getcon();
		try {
			PreparedStatement ps = con.prepareStatement("update tbl_std_notification set status='seen' where std_id='"+id+"'");
		
			status = ps.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("Status updated");
		
		return status;
	}
	
	public static int updateClg(int id) {
		int status = 0;
		
		Connection con = DB.getcon();
		try {
			PreparedStatement ps = con.prepareStatement("update tbl_std_notification set status='seen' where clg_id='"+id+"'");
			status = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("Status updated");
		return status;
	}
	
	
	
	
	public static  List<Notification_Bean> notificationComp(int id) {
		
		List<Notification_Bean> list = new ArrayList<Notification_Bean>();
		
		try {	
				
				
				Connection con = DB.getcon();
				PreparedStatement ps = con.prepareStatement("select count(c_notifi_id) from tbl_job_post_comp_notifi where "
															+ "comp_id = '"+id+"' and status='unseen'");
				ResultSet rs = ps.executeQuery();
						  rs.next();
						  
						  //bean.setNotification_id(rs.getInt(1));
				int c = rs.getInt(1);
						  ps = con.prepareStatement("select * from tbl_job_post_comp_notifi where comp_id = '"+id+"' and "
						  							+ "status='unseen' order by c_notifi_id desc limit 3"); 
						  
						  rs = ps.executeQuery();
						  
					while(rs.next()) {
						Notification_Bean bean = new Notification_Bean();
						bean.setNotification_id(c);
						bean.setTitle(rs.getString("title"));
						bean.setMassege(rs.getString("message"));
						bean.setStatus(rs.getString("status"));
						bean.setCreated(rs.getDate("created"));
						
						list.add(bean);
					}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			System.out.println("notification method executed");
			
		return list;
	}
	
	
	public static List<Notification_Bean> notificationStd(int id){
		
		List<Notification_Bean> list = new ArrayList<Notification_Bean>();
		
		try {
			
			
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select count(*) from tbl_std_notification where std_id='"+id+"' "
															+ " and status='unseen'");
			ResultSet rs = ps.executeQuery();
			rs.next();
			
			//bean.setNotification_id(rs.getInt(1));
			int c = rs.getInt(1);
			
			ps = con.prepareStatement("select * from tbl_std_notification where std_id='"+id+"' and status='unseen'");
			rs = ps.executeQuery();
			while(rs.next()) {
				Notification_Bean bean = new Notification_Bean();
				
				bean.setNotification_id(c);
				bean.setTitle(rs.getString("title"));
				bean.setMassege(rs.getString("message"));
				bean.setCreated(rs.getDate("created"));
				bean.setStatus(rs.getString("status"));
				
				list.add(bean);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
public static List<Notification_Bean> notificationCLG(int id){
		
		List<Notification_Bean> list = new ArrayList<Notification_Bean>();
		
		try {
			
			
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select count(*) from tbl_std_notification where clg_id='"+id+"' "
														+ " and status='unseen'");
			ResultSet rs = ps.executeQuery();
			rs.next();
			
			//bean.setNotification_id(rs.getInt(1));
			int c = rs.getInt(1);
			
			ps = con.prepareStatement("select * from tbl_std_notification where clg_id='"+id+"' and status='unseen'");
			rs = ps.executeQuery();
			while(rs.next()) {
				
				Notification_Bean bean = new Notification_Bean();
				bean.setNotification_id(c);
				bean.setTitle(rs.getString("title"));
				bean.setMassege(rs.getString("message"));
				bean.setCreated(rs.getDate("created"));
				bean.setStatus(rs.getString("status"));
				
				list.add(bean);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	///////////////////Notifications list methods//////////////////////

	public static List<Notification_Bean> viewCompN(int id){
		List<Notification_Bean> list = new ArrayList<Notification_Bean>();
		try {
			
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_job_post_comp_notifi where comp_id='"+id+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Notification_Bean bean = new Notification_Bean();
				bean.setTitle(rs.getString("title"));
				bean.setMassege(rs.getString("message"));
				bean.setCreated(rs.getDate("created"));
				list.add(bean);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	public static List<Notification_Bean> viewClgN(int id){
		List<Notification_Bean> list = new ArrayList<Notification_Bean>();
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * form tbl_std_notification where clg_id = '"+id+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Notification_Bean bean = new Notification_Bean();
				
				bean.setTitle(rs.getString("title"));
				bean.setMassege(rs.getString("message"));
				bean.setCreated(rs.getDate("created"));
				list.add(bean);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public static List<Notification_Bean> viewStdN(int id){
		List<Notification_Bean> list = new ArrayList<Notification_Bean>();
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_std_notification where std_id ='"+id+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Notification_Bean bean = new Notification_Bean();
				
				bean.setTitle(rs.getString("title"));
				bean.setMassege(rs.getString("message"));
				bean.setCreated(rs.getDate("created"));
				list.add(bean);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}


}
