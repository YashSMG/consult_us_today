package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.company.bean.JobPost_Bean;
import com.company.bean.JobPost_Bean1;

public class JobPost_Dao {

	public static List<JobPost_Bean> getJobPostRecord(){
		List<JobPost_Bean> list=new ArrayList<JobPost_Bean>();
		
		try {			
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("select  tbl_job_posting.* , tbl_companies_reg.name ," +
					 " tbl_companies_reg.cmpy_img, "+" tbl_companies_reg.email, tbl_companies_reg.address, tbl_type.type"+
					 " from tbl_job_posting " + 
					 " join tbl_companies_reg on " + 
					 " tbl_job_posting.comp_id = tbl_companies_reg.comp_id " +
					 " join tbl_type on " +
					 " tbl_job_posting.type_id = tbl_type.type_id "
					 + "where tbl_job_posting.approval_status='Approved' ");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				JobPost_Bean j=new JobPost_Bean();
				
					j.setPosting_id(rs.getInt("posting_id"));
					j.setComp_id(rs.getInt("comp_id"));
					j.setName(rs.getString("name"));
					j.setImage(rs.getString("cmpy_img"));
					j.setEmail(rs.getString("email"));
					j.setAddress(rs.getString("address"));
					j.setJob_title(rs.getString("job_title"));
					j.setTechnology(rs.getString("technology"));
					j.setType_id(rs.getInt("type_id"));
					j.setJobtype(rs.getString("type"));
					j.setStatus(rs.getString("status"));
					j.setPosted_date(rs.getDate("posted_date"));
					j.setOther(rs.getString("other"));
					j.setVacancies(rs.getInt("vacancies"));
					j.setEnd_date(rs.getDate("end_date"));
					j.setApproval_satus(rs.getString("approval_status"));
		        list.add(j);
			}		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;		
	}
	
	public static List<JobPost_Bean> viewAllJobPosting(){
		List<JobPost_Bean> list=new ArrayList<JobPost_Bean>();
		
		try {
			
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("select  tbl_job_posting.* , tbl_companies_reg.name ," +
					 " tbl_companies_reg.cmpy_img, "+" tbl_companies_reg.email, tbl_companies_reg.address, tbl_type.type"+
					 " from tbl_job_posting " + 
					 " join tbl_companies_reg on " + 
					 " tbl_job_posting.comp_id = tbl_companies_reg.comp_id " +
					 " join tbl_type on " +
					 " tbl_job_posting.type_id = tbl_type.type_id ");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				JobPost_Bean j=new JobPost_Bean();
				
				j.setPosting_id(rs.getInt("posting_id"));
				j.setComp_id(rs.getInt("comp_id"));
				j.setName(rs.getString("name"));
				j.setImage(rs.getString("cmpy_img"));				
				j.setJob_title(rs.getString("job_title"));
				j.setStatus(rs.getString("status"));
				j.setApproval_satus(rs.getString("approval_status"));
		        list.add(j);
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
	
	
	
	public static int saveJobpost(JobPost_Bean1 b) {
		int status=0;
		try {
			Connection con=DB.getcon();
			String sql ="insert into tbl_job_posting(posting_id,comp_id,job_title,technology,type_id,status,posted_date,other,vacancies,end_date)"
					 +"values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			    
			  ps.setInt(1,b.getPosting_id());
			  ps.setInt(2,b.getComp_id());
		  	  ps.setString(3,b.getJob_title());
			  ps.setString(4,b.getTechnology());
			  ps.setInt(5,b.getType_id());
			  ps.setString(6,b.getStatus()); 
			  ps.setDate(7,b.getPosted_date());
			  ps.setString(8,b.getOther());
			  ps.setInt(9,b.getVacancies());
			  ps.setDate(10,b.getEnd_date());
			
			  status=ps.executeUpdate();
			  
			  int genId=0;
			  try (ResultSet generatedKeys=ps.getGeneratedKeys()){
				  if(generatedKeys.next()) {
					  genId=generatedKeys.getInt(1);
					  System.out.println("Generate key is"+genId);
				  }else {
					  throw new SQLException();
				  }
			  }catch(Exception e) {
				  e.printStackTrace();
			  }
			  PreparedStatement ps1=con.prepareStatement("insert into tbl_job_posting_notification (comp_id,title,message)values(?,?,?)");
			  ps1.setInt(1, genId);
			  ps1.setString(2, "Job has been posted");
			  ps1.setString(3, "vacancy=3 position=software engg" );
			  ps1.executeUpdate();			 
			  
			con.close(); 
		}
		catch(Exception e)
		{
			
			e.printStackTrace();
		}
		return status;
		
	}
	
	
	
	//Ruchita
	
	public static int saveJobpost(JobPost_Bean b) {
		int status=0;
		try {
			Connection con=DB.getcon();
			String sql ="insert into tbl_job_posting(comp_id,job_title,technology,type_id,status,posted_date,"
				    	+ "other,vacancies,end_date) values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
					
			    
			//ps.setInt(1,b.getPosting_id());
			  ps.setInt(1,b.getComp_id());
			  ps.setString(2,b.getJob_title());
			  ps.setString(3,b.getTechnology());
			  ps.setInt(4,b.getType_id());
			  ps.setString(5,b.getStatus()); 
			  ps.setDate(6,b.getPosted_date());
			  ps.setString(7,b.getOther());
			  ps.setInt(8,b.getVacancies());
			  ps.setDate(9,b.getEnd_date());
			
			  status=ps.executeUpdate();
			  
			  System.out.println("Job Posted");
			  
			  int genId=0;
			 /* try (ResultSet generatedKeys=ps.getGeneratedKeys()){*/
			  	  ResultSet generatedKeys=ps.getGeneratedKeys();
				  if(generatedKeys.next()) {
					  genId=generatedKeys.getInt(1);
					  System.out.println("Generate key is"+genId);
				  }else {
					  System.out.println("Key not Generated");
					  throw new SQLException();
				  }
			 /* }catch(Exception e) {
				  e.printStackTrace();
			  }*/
			  PreparedStatement ps1=con.prepareStatement("insert into tbl_job_post_comp_notifi(comp_id,job_post_id,title,"
			  											+ "message) values(?,?,?,?)");
			  ps1.setInt(1, b.getComp_id());
			  ps1.setInt(2, genId);
			  ps1.setString(3, "Job has been posted");
			  ps1.setString(4, "vacancy=3 position=software engg" );
			  ps1.executeUpdate();
			 
			  System.out.println("JOB post Notification submited");
			  
			con.close();  
			  
		
		}
		catch(Exception e)
		{	
			e.printStackTrace();
		}
		return status;
		
	}
	

	
	//Darshan
	
	
	public static List<JobPost_Bean> getViewJobrecord(){
		   List <JobPost_Bean> list= new ArrayList<JobPost_Bean>();
		   try {
			Connection con = DB.getcon();
			PreparedStatement ps=con.prepareStatement("select  tbl_job_posting.* , tbl_companies_reg.name "+
					 " from tbl_job_posting " + 
					 " join tbl_companies_reg on " + 
					 " tbl_job_posting.comp_id = tbl_companies_reg.comp_id ");
			 ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				JobPost_Bean d=new JobPost_Bean();
				
				d.setPosting_id(rs.getInt("posting_id"));
				d.setComp_id(rs.getInt("comp_id"));
				d.setName(rs.getString("name"));
				d.setJob_title(rs.getString("job_title"));
				d.setTechnology(rs.getString("technology"));
				d.setType_id(rs.getInt("type_id"));
				d.setStatus(rs.getString("status"));
				d.setPosted_date(rs.getDate("posted_date"));
				d.setOther(rs.getNString("other"));
				d.setVacancies(rs.getInt("vacancies"));
			    
				list.add(d);
			}
		}catch(Exception e){
						e.printStackTrace();
					}
					return list;
		
	}
	
	
	public static JobPost_Bean viewJob(int id) {
		JobPost_Bean bean = new JobPost_Bean();
		
		Connection con = DB.getcon();
		try {
			PreparedStatement ps = con.prepareStatement("select tbl_job_posting.*, tbl_companies_reg.*, tbl_type.type "
					+ " from tbl_job_posting "
					+ " join tbl_companies_reg on "
					+ " tbl_job_posting.comp_id = tbl_companies_reg.comp_id "
					+ " join tbl_type on "
					+ " tbl_job_posting.type_id = tbl_type.type_id "
					+ " where tbl_job_posting.posting_id = '"+id+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				bean.setComp_id(rs.getInt("comp_id"));
				bean.setName(rs.getString("name"));
				bean.setEmail(rs.getString("email"));
				bean.setAddress(rs.getString("address"));
				bean.setImage(rs.getString("cmpy_img"));
				bean.setWebsite(rs.getString("website"));				
				bean.setJob_title(rs.getString("job_title"));
				bean.setTechnology(rs.getString("technology"));
				bean.setPosted_date(rs.getDate("posted_date"));
				bean.setOther(rs.getString("other"));
				bean.setVacancies(rs.getInt("vacancies"));
				
				bean.setJobtype(rs.getString("type"));
				
			}
			con.close();
		System.out.println("view job method executed ");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bean;
	}
	
	public static int deleteJob(int id) {
		int status=0;
	
		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("delete from tbl_job_posting where posting_id=?");
			ps.setInt(1, id);
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public static int status_JobPostingApprove(int id) {
		int status = 0;
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select approval_status from tbl_job_posting where posting_id='"+id+"'");
			ResultSet rs = ps.executeQuery();
			rs.next();
			String JobApplnStatus = rs.getString(1);
			System.out.println("JobPostingStatus is :::>>"+JobApplnStatus);
			
			ps = con.prepareStatement("update tbl_job_posting set approval_status=? where posting_id = '"+id+"'" );
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

	public static List<JobPost_Bean> viewPostedJob(int id){
		List<JobPost_Bean> list = new ArrayList<JobPost_Bean>();
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select * from tbl_job_posting where comp_id='"+id+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				JobPost_Bean bean = new JobPost_Bean();
				bean.setPosting_id(rs.getInt("posting_id"));
				bean.setJob_title(rs.getString("job_title"));
				bean.setTechnology(rs.getString("technology"));
				bean.setPosted_date(rs.getDate("posted_date"));
				bean.setOther(rs.getString("other"));
				bean.setVacancies(rs.getInt("vacancies"));
				bean.setApproval_satus(rs.getString("approval_status"));
				list.add(bean);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
}
