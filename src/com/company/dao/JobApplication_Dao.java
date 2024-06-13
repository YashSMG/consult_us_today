package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.company.bean.JobApplication_Bean;
import com.company.bean.JobPost_Bean;

public class JobApplication_Dao {
	
	public static List<JobApplication_Bean> getJobRecord(int id){
		List<JobApplication_Bean> list=new ArrayList<JobApplication_Bean>();
		
		try {
			Connection con=DB.getcon();
		PreparedStatement ps=con.prepareStatement("select tbl_job_applied.*,tbl_student_reg.name from " + 
				"				 tbl_job_applied " + 
				"				 join tbl_student_reg  on "+
				"				 tbl_job_applied.student_id = tbl_student_reg.std_id "+
				"				where tbl_job_applied.comp_id = '"+id+"' and tbl_job_applied.approval_status ='Approved' " );
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			JobApplication_Bean k=new JobApplication_Bean();
			
			k.setJob_appln_id(rs.getInt("job_appln_id"));
			k.setComp_id(rs.getInt("comp_id"));
			k.setStudent_id(rs.getInt("student_id"));
			k.setApplied_for(rs.getString("applied_for"));
			k.setCurrent_location(rs.getString("current_location"));
			k.setPastexperience(rs.getString("pastexperience"));
			k.setDescription(rs.getString("description"));
			k.setName(rs.getString("name"));
			list.add(k);
		}
		
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static int deleteJobAppln(int id) {
		int status=0;

		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("delete from tbl_job_applied where job_appln_id=?");
			ps.setInt(1, id);
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	
	public static JobPost_Bean viewJobAppln(int id) {
		JobPost_Bean bean = new JobPost_Bean();
		
		Connection con = DB.getcon();
		try {
			PreparedStatement ps = con.prepareStatement("select tbl_job_applied.*, tbl_student_reg.* "
					+ " from tbl_job_applied "
					+ " join tbl_student_reg on "
					+ " tbl_job_applied.student_id = tbl_student_reg.std_id "
					
					+ " where tbl_job_applied.job_appln_id = '"+id+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				bean.setName(rs.getString("name"));
				bean.setEmail(rs.getString("email"));
				bean.setImage(rs.getString("std_image"));
				bean.setApplied_for(rs.getString("applied_for"));
				bean.setCurr_location(rs.getString("current_location"));
				bean.setPastexp(rs.getString("pastexperience"));
				

				
			}
			con.close();
		System.out.println("view job method executed ");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bean;
	}

	public static int changeStatus(int id,String sts) {
		int status=0;
		
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("update tbl_job_applied set status = '"+sts+"' where job_appln_id='"+id+"'");
			status = ps.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}

	public static List<JobApplication_Bean> viewAllJobAppln(){
		List<JobApplication_Bean> list = new ArrayList<JobApplication_Bean>();
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select tbl_job_applied.*,tbl_student_reg.name AS Stdname,tbl_student_reg.std_image,"
					+ "							tbl_companies_reg.name AS Compname "
					+ "							from  tbl_job_applied " + 
					"							join tbl_student_reg  on " + 
					"							tbl_job_applied.student_id = tbl_student_reg.std_id "
					+ "							join tbl_companies_reg on "
					+ "							tbl_job_applied.comp_id = tbl_companies_reg.comp_id ");
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				JobApplication_Bean bean = new JobApplication_Bean();
				bean.setJob_appln_id(rs.getInt("job_appln_id"));
				bean.setStudent_id(rs.getInt("student_id"));
				bean.setName(rs.getString("Stdname"));
				bean.setImage(rs.getString("std_image"));
				bean.setComp_name(rs.getString("Compname"));
				bean.setApproval_status(rs.getString("approval_status"));
				bean.setApplied_for(rs.getString("applied_for"));
				bean.setCurrent_location(rs.getString("current_location"));
				bean.setPastexperience(rs.getString("pastexperience"));
				bean.setDescription(rs.getString("description"));
				
				
				list.add(bean);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static int status_JobApplnApprove(int id) {
		int status = 0;
		try {
			Connection con = DB.getcon();
			
			PreparedStatement ps = con.prepareStatement("select approval_status from tbl_job_applied where job_appln_id='"+id+"'");
			ResultSet rs = ps.executeQuery();
			rs.next();
			String JobApplnStatus = rs.getString(1);
			System.out.println("JobApplnStatus is :::>>"+JobApplnStatus);
			
				ps = con.prepareStatement("update tbl_job_applied set approval_status=? where job_appln_id = '"+id+"'" );
			if(JobApplnStatus.equals("NotApproved")) {
			ps.setString(1,"Approved");
			}
			else {
				ps.setString(1, "NotApproved");
			}
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return status;
	}
	
}
