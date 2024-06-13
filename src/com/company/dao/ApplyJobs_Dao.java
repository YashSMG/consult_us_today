package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.company.bean.ApplyJobs_Bean;
import com.company.bean.JobPost_Bean;


public class ApplyJobs_Dao {
	
	
	public static int applyjob(ApplyJobs_Bean bean) {	  
		  int status=0;
		  
			try {
				Connection con=DB.getcon();
				String sql = "insert into tbl_job_applied(job_id,comp_id,student_id,applied_for,"
						+ "current_location,pastexperience,description,contact_no,email) values(?,?,?,?,?,?,?,?,?) ";
				
				PreparedStatement ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
				
				ps.setInt(1, bean.getJob_id());				
				ps.setInt(2,bean.getComp_id());
				ps.setInt(3, bean.getStd_id());
				ps.setString(4, bean.getApplied_for());
				ps.setString(5, bean.getCurrent_location());
				ps.setString(6, bean.getPastexperience());
				ps.setString(7,bean.getDescription());
				ps.setLong(8, bean.getContact());
				ps.setString(9, bean.getEmail());
				
		        status=ps.executeUpdate();
				
		        int genId = 0;
		        
		        ResultSet generatedKeys = ps.getGeneratedKeys();
		        if(generatedKeys.next()) {
		        	genId = generatedKeys.getInt(1);
		        }else {
		        	throw new SQLException();
		        }
		        
		        PreparedStatement ps1 = con.prepareStatement("insert into tbl_std_notification(std_id,job_id,title,message)"
		        											+ " values(?,?,?,?)");
		        ps1.setInt(1, bean.getStd_id());
		        ps1.setInt(2, bean.getJob_id());
		        ps1.setString(3, "Applied to JOB");
		        ps1.setString(4, "You hava successfully applied to the job. ");
		        
		        ps1.executeUpdate();
		        con.close();
		        
				}
		
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return status;
		}

	
	public static JobPost_Bean getJobs(int id) {
		
		JobPost_Bean bean=null;	
		try {
		 Connection con= DB.getcon();
		 PreparedStatement rs=con.prepareStatement("select * from tbl_job_posting where posting_id='"+id+"' ");
		 
		 ResultSet d=rs.executeQuery();
		 while(d.next()) {
			 bean=new JobPost_Bean();
			 bean.setJob_title(d.getString("job_title"));
		 }
		 
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return bean;
	 }
	
	public static ApplyJobs_Bean viewApply(int id) {
		ApplyJobs_Bean bean = new ApplyJobs_Bean();
		
		Connection con = DB.getcon();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("select * from tbl_student_reg where std_id = '"+id+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				bean.setName(rs.getString("name"));
				bean.setEmail(rs.getString("email"));
				bean.setContact(rs.getLong("contact_no"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return bean;
	}
	
	public static List<ApplyJobs_Bean> appliedList(int id){
		List<ApplyJobs_Bean> list = new ArrayList<ApplyJobs_Bean>();
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select tbl_job_applied.* ,tbl_companies_reg.name ,tbl_companies_reg.address "
														+ " from tbl_job_applied "
														+ " join tbl_companies_reg on "
														+ " tbl_job_applied.comp_id = tbl_companies_reg.comp_id "
														+ " where tbl_job_applied.student_id = '"+id+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				ApplyJobs_Bean bean = new ApplyJobs_Bean();
		
				bean.setName(rs.getString("name"));
				bean.setCurrent_location(rs.getString("address"));
				bean.setApplied_for(rs.getString("applied_for"));
				bean.setAppliedDate(rs.getDate("applied_date"));
				bean.setStd_id(rs.getInt("student_id"));
			
				list.add(bean);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
}

