package com.company.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.company.bean.Campus_Bean;


public class Campus_Dao {
	
	public static List<Campus_Bean> getCampusRecord(){
		List<Campus_Bean>list=new ArrayList<Campus_Bean>();
		
		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("select  tbl_campus.* , tbl_companies_reg.name ," +
					 " tbl_companies_reg.cmpy_img, "+" tbl_companies_reg.email, tbl_companies_reg.address "+
					 " from tbl_campus " + 
					 " join tbl_companies_reg on " + 
					 " tbl_campus.comp_id = tbl_companies_reg.comp_id where tbl_campus.approval_status='Approved' ");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Campus_Bean p=new Campus_Bean();
				p.setCampus_id(rs.getInt("campus_id"));
				p.setComp_id(rs.getInt("comp_id"));
				p.setName(rs.getString("name"));
				p.setCmpy_image(rs.getString("cmpy_img"));
				p.setAddress(rs.getString("address"));
				p.setPosted_date(rs.getDate("posted_date"));
				p.setRegistration_link(rs.getString("registration_link"));
				p.setPosition(rs.getString("position"));
				p.setDrive_info(rs.getString("drive_info"));
				p.setEnd_date(rs.getDate("end_date"));
				p.setStatus(rs.getString("status"));
				p.setApproval_status(rs.getString("approval_status"));
				list.add(p);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
	
	
	public static List<Campus_Bean> viewAllCampusPosting(){
		List<Campus_Bean>list=new ArrayList<Campus_Bean>();
		
		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("select  tbl_campus.* , tbl_companies_reg.name ," +
					 " tbl_companies_reg.cmpy_img, "+" tbl_companies_reg.email, tbl_companies_reg.address "+
					 " from tbl_campus " + 
					 " join tbl_companies_reg on " + 
					 " tbl_campus.comp_id = tbl_companies_reg.comp_id ");
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Campus_Bean p=new Campus_Bean();
				p.setCampus_id(rs.getInt("campus_id"));
				p.setComp_id(rs.getInt("comp_id"));
				p.setName(rs.getString("name"));
				p.setCmpy_image(rs.getString("cmpy_img"));
				p.setPosition(rs.getString("position"));
				p.setStatus(rs.getString("status"));
				p.setApproval_status(rs.getString("approval_status"));
				list.add(p);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;	
	}
	
	
	//Ruchita
	
	public static int saveCampusnew(Campus_Bean c) {
		int status=0;
		try {
			Connection con=DB.getcon();
			String sql = "insert into tbl_campus(comp_id,posted_date,registration_link,position,drive_info,end_date)" 
										+ "values(?,?,?,?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
					
			ps.setInt(1, c.getComp_id());
			
			java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		    ps.setDate(2, sqlDate);
			ps.setString(3,c.getRegistration_link());
			ps.setString(4, c.getPosition());
			ps.setString(5, c.getDrive_info());
			ps.setDate(6,c.getEnd_date());
					
			status=ps.executeUpdate();
			
			int genId = 0;
			ResultSet generatedKeys = ps.getGeneratedKeys();
			if(generatedKeys.next()) {
				genId = generatedKeys.getInt(1);
			}else {
				throw new SQLException();
			}
			
			PreparedStatement ps1 = con.prepareStatement("insert into tbl_job_post_comp_notifi(comp_id,campus_post_id,title,message)"
					+ " values(?,?,?,?)");
			ps1.setInt(1, c.getComp_id());
			ps1.setInt(2, genId);
			ps1.setString(3, "Campus Posted");
			ps1.setString(4, "Campus Description MEssage");
			ps1.executeUpdate();
			con.close();
		
		}
	    catch(Exception e)
		{
		    e.printStackTrace();
		}
		
		return status;
	}
	
	
	public static Campus_Bean viewCampus(int id) {
		Campus_Bean cbean= new Campus_Bean();
		try {
			
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("select tbl_campus.*,tbl_companies_reg.name,tbl_companies_reg.cmpy_img "
					+ " from tbl_campus "
					+ " join tbl_companies_reg on "
					+ " tbl_campus.comp_id=tbl_companies_reg.comp_id "
					+ " where tbl_campus.campus_id=? ");
			ps.setInt(1, id);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				cbean.setCampus_id(rs.getInt("campus_id"));
				cbean.setComp_id(rs.getInt("comp_id"));
				cbean.setPosition(rs.getString("position"));
				cbean.setDrive_info(rs.getString("drive_info"));
				cbean.setName(rs.getString("name"));
				cbean.setCmpy_image(rs.getString("cmpy_img"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return cbean;
	}
	
	

	
	public static int saveCampusApply(Campus_Bean bean) {
		
		int status=0;
	  
		try {
			Connection con=DB.getcon();
			String sql = "insert into tbl_campus_applied(campus_id,comp_id,college_id,position,drive_info) "
					+ "values(?,?,?,?,?) ";
			PreparedStatement ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			
			
			ps.setInt(1,bean.getCampus_id());
			
			ps.setInt(2, bean.getComp_id());
			ps.setInt(3, bean.getCollege_id());
			ps.setString(4,bean.getPosition());
			ps.setString(5, bean.getDrive_info());
			
	        status=ps.executeUpdate();
			
	        int genId = 0;
	        
	        ResultSet generatedKeys = ps.getGeneratedKeys();
	        if(generatedKeys.next()) {
	        	genId = generatedKeys.getInt(1);
	        }else {
	        	throw new SQLException();
	        }
	        
	        PreparedStatement ps1 = con.prepareStatement("insert into tbl_std_notification(clg_id,campus_id,title,message)"
	        		     					+ " values(?,?,?,?)");
	        ps1.setInt(1, bean.getCollege_id());
	        ps1.setInt(2, bean.getCampus_id());
	        ps1.setString(3, "Applied for Campus successfully");
	        ps1.setString(4, "This is Campus Applied description section .....");
	        
	        ps1.executeUpdate();
	        
	        con.close();
	        
	        
			}
	
	
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	
	  
//Campus List
	  
	  
	  public static List<Campus_Bean> campusApplied(int comid){
			List<Campus_Bean>list=new ArrayList<Campus_Bean>();
			
			try {
				Connection con=DB.getcon();
				PreparedStatement ps=con.prepareStatement("select  tbl_campus_applied.* , tbl_colleges_reg.name,tbl_colleges_reg.clg_image , "
						+ "tbl_campus.*" +
						 " from tbl_campus_applied " + 
						 " join tbl_colleges_reg on " + 
						 " tbl_campus_applied.college_id = tbl_colleges_reg.clg_id "
						 + "join tbl_campus on "
						 + "tbl_campus_applied.campus_id = tbl_campus.campus_id "
						 
						 + "where tbl_campus_applied.comp_id = '"+comid+"' and tbl_campus_applied.approval_status='Approved' ");
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					Campus_Bean campus=new Campus_Bean();
					campus.setCollege_campus_id(rs.getInt("college_campus_id"));
				/*	campus.setCampus_id(rs.getInt("campus_id"));
					campus.setComp_id(rs.getInt("comp_id"));
*/					campus.setCollege_id(rs.getInt("college_id"));
					campus.setPosition(rs.getString("position"));
					campus.setDrive_info(rs.getString("drive_info"));
					campus.setApplied_Date(rs.getDate("applied_date"));
					campus.setStatus(rs.getString("status"));
					campus.setName(rs.getString("name"));
					campus.setCmpy_image(rs.getString("clg_image"));
					
					list.add(campus);
					
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return list;
			
			
		}	
	
	  
	  public static int deleteCampus(int id) {
			int status=0;
		
			try {
				Connection con=DB.getcon();
				PreparedStatement ps=con.prepareStatement("delete from tbl_campus where campus_id=?");
				ps.setInt(1, id);
				status=ps.executeUpdate();
				con.close();
			}
			catch(Exception e) {
				System.out.println(e);
			}
			return status;
		}

	  public static Campus_Bean viewCampusApplied(int id) {
			Campus_Bean cbean= new Campus_Bean();
			try {
				
				Connection con=DB.getcon();
				PreparedStatement ps=con.prepareStatement("select tbl_campus_applied.*,tbl_colleges_reg.*"
						+ " from tbl_campus_applied "
						+ " join tbl_colleges_reg on "
						+ " tbl_campus_applied.college_id = tbl_colleges_reg.clg_id "
						+ " where tbl_campus_applied.college_campus_id=? ");
				ps.setInt(1, id);
				
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					cbean.setCampus_id(rs.getInt("campus_id"));
					cbean.setApplied_Date(rs.getDate("applied_date"));
					cbean.setPosition(rs.getString("position"));
					cbean.setDrive_info(rs.getString("drive_info"));
					cbean.setName(rs.getString("name"));
					cbean.setCmpy_image(rs.getString("clg_image"));
					cbean.setStatus(rs.getString("cap_applied_sts"));
					
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			return cbean;
		}

	  public static int changeStatus(int id,String sts) {
			int status=0;
			
			try {
				Connection con = DB.getcon();
				PreparedStatement ps = con.prepareStatement("update tbl_campus_applied set cap_applied_sts = '"+sts+"' where college_campus_id ='"+id+"'");
				status = ps.executeUpdate();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return status;
		}
	  
	  public static List<Campus_Bean> veiwAllCampusAppln(){
		  List<Campus_Bean> list = new ArrayList<Campus_Bean>();
		  try {
			  Connection con = DB.getcon();
			  PreparedStatement ps = con.prepareStatement("select  tbl_campus_applied.* , tbl_colleges_reg.name AS clgName ,tbl_colleges_reg.clg_image ,"
			  		+ " tbl_companies_reg.name AS compName" + 
			  		"	 from tbl_campus_applied " + 
			  		"	 join tbl_colleges_reg on " + 
			  		"	 tbl_campus_applied.college_id = tbl_colleges_reg.clg_id "
			  		+ "  join tbl_companies_reg on "
			  		+ " tbl_campus_applied.comp_id = tbl_companies_reg.comp_id ");
			  ResultSet rs = ps.executeQuery();
			  while(rs.next()) {
				  Campus_Bean bean = new Campus_Bean();
				  bean.setCollege_campus_id(rs.getInt("college_campus_id"));
				  bean.setCmpy_image(rs.getString("clg_image"));
				  bean.setName(rs.getString("clgName"));
				  bean.setCompName(rs.getString("compName"));
				  bean.setApplied_Date(rs.getDate("applied_date"));
				  bean.setApproval_status(rs.getString("approval_status"));
				  
				  list.add(bean);
			  }
			  
			  
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
		  return list;
	  }
	  
	  public static int status_CampusApplnApprove(int id) {
			int status = 0;
			try {
				Connection con = DB.getcon();
				
				PreparedStatement ps = con.prepareStatement("select approval_status from tbl_campus_applied where college_campus_id='"+id+"'");
				ResultSet rs = ps.executeQuery();
				rs.next();
				String JobApplnStatus = rs.getString(1);
				System.out.println("JobApplnStatus is :::>>"+JobApplnStatus);
				
					ps = con.prepareStatement("update tbl_campus_applied set approval_status=? where college_campus_id = '"+id+"'" );
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
		
	  public static int status_CampusPostApprove(int id) {
			int status = 0;
			try {
				Connection con = DB.getcon();
				
				PreparedStatement ps = con.prepareStatement("select approval_status from tbl_campus where campus_id='"+id+"'");
				ResultSet rs = ps.executeQuery();
				rs.next();
				String JobApplnStatus = rs.getString(1);
				System.out.println("JobApplnStatus is :::>>"+JobApplnStatus);
				
					ps = con.prepareStatement("update tbl_campus set approval_status=? where campus_id = '"+id+"'" );
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
	  
	  public static List<Campus_Bean> viewCampusPosted(int id){
		  List<Campus_Bean> list = new ArrayList<Campus_Bean>();
		  try {
			  Connection con = DB.getcon();
			  PreparedStatement ps = con.prepareStatement("select * from tbl_campus where comp_id='"+id+"'");
			  ResultSet rs = ps.executeQuery();
			  while(rs.next()) {
				  Campus_Bean bean = new Campus_Bean();
				  	bean.setCampus_id(rs.getInt("campus_id"));
				  	bean.setRegistration_link(rs.getString("registration_link"));
				  	bean.setPosition(rs.getString("position"));
				  	bean.setDrive_info(rs.getString("drive_info"));
				  	bean.setApproval_status(rs.getString("approval_status"));
				  	bean.setPosted_date(rs.getDate("posted_date"));
				  	list.add(bean);
			  }
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
		  return list;
	  }
	  
	  public static List<Campus_Bean> viewCollegeCampusApplied(int id){
		  List<Campus_Bean> list = new ArrayList<Campus_Bean>();
		  try {
			  Connection con = DB.getcon();
			  PreparedStatement ps = con.prepareStatement("select tbl_campus_applied.*,tbl_companies_reg.name ,"
			  		+ "					 tbl_companies_reg.cmpy_img " + 
			  		"			  		 from tbl_campus_applied " + 
			  		"			  		 join tbl_companies_reg on " + 
			  		"			  		 tbl_companies_reg.comp_id = tbl_campus_applied.comp_id " + 
			  		"			  		 where college_id=1 and approval_status='Approved'");
			  ResultSet rs = ps.executeQuery();
			  while(rs.next()) {
				  Campus_Bean bean = new Campus_Bean();
				  		bean.setCollege_campus_id(rs.getInt("college_campus_id"));
				  		bean.setCmpy_image(rs.getString("cmpy_img"));
				  		bean.setCompName(rs.getString("name"));
				  		bean.setPosition(rs.getString("position"));
				  		bean.setDrive_info(rs.getString("drive_info"));
				  		bean.setApplied_Date(rs.getDate("applied_date"));
				  		bean.setStatus(rs.getString("cap_applied_sts"));
				  list.add(bean);
			  }
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
		  return list;
	  }
 }
