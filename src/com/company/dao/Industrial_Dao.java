package com.company.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.company.bean.Industrial_Bean;
import com.company.bean.JobApplication_Bean;


public class Industrial_Dao {
	
	public static List<Industrial_Bean> getIndustrialRecord(){
		List<Industrial_Bean> list=new ArrayList<Industrial_Bean>();
		
		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("select  tbl_industrial_visit.* , tbl_companies_reg.name ," +
					 " tbl_companies_reg.cmpy_img, "+" tbl_companies_reg.email, tbl_companies_reg.address "+
					 " from tbl_industrial_visit " + 
					 " join tbl_companies_reg on " + 
					 " tbl_industrial_visit.comp_id = tbl_companies_reg.comp_id ");

			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				Industrial_Bean i=new Industrial_Bean();
				
				
				i.setIndustrial_id(rs.getInt("industrial_id"));
				i.setComp_id(rs.getInt("comp_id"));
				i.setName(rs.getString("name"));
				i.setCmpy_image(rs.getString("cmpy_img"));
				i.setPosted_date(rs.getDate("posted_date"));
				i.setTraining_info(rs.getString("training_info"));
				i.setVisit_date(rs.getDate("visit_date"));
				i.setStatus(rs.getString("status"));
				i.setAddress(rs.getString("address"));
				i.setApproval_status(rs.getString("approval_status"));
				list.add(i);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static List<Industrial_Bean> viewAllIndustrialVisitPost(){
		List<Industrial_Bean> list=new ArrayList<Industrial_Bean>();
		
		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("select  tbl_industrial_visit.* , tbl_companies_reg.name ," +
					 " tbl_companies_reg.cmpy_img, "+" tbl_companies_reg.email, tbl_companies_reg.address "+
					 " from tbl_industrial_visit " + 
					 " join tbl_companies_reg on " + 
					 " tbl_industrial_visit.comp_id = tbl_companies_reg.comp_id where tbl_industrial_visit.approval_status='Approved' ");

			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				Industrial_Bean i=new Industrial_Bean();
				
				i.setIndustrial_id(rs.getInt("industrial_id"));
				i.setName(rs.getString("name"));
				i.setCmpy_image(rs.getString("cmpy_img"));
				i.setPosted_date(rs.getDate("posted_date"));
				i.setStatus(rs.getString("status"));
				i.setApproval_status(rs.getString("approval_status"));
				i.setTraining_info(rs.getString("training_info"));
				i.setVisit_date(rs.getDate("visit_date"));

				list.add(i);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
public static 	Industrial_Bean getIndustrialRecordById(int id) {
		
	Industrial_Bean i=null;
		
		try {
			
			Connection con=DB.getcon();
			 PreparedStatement ps=con.prepareStatement("select * from tbl_industrial_visit where industrial_id=?");
			 ps.setInt(1,id);
			 ResultSet rs=ps.executeQuery();
			
			 while(rs.next()){
				
				 i=new Industrial_Bean();
				 i.setIndustrial_id(rs.getInt("industrial_id"));
					i.setComp_id(rs.getInt("comp_id"));
					i.setPosted_date(rs.getDate("posted_date"));
					i.setTraining_info(rs.getString("training_info"));
					i.setVisit_date(rs.getDate("visit_date"));
				 }
			 }catch(Exception e) {
			e.printStackTrace();
			}
		
		return i;
		
	}


//Ruchita

public static int saveIndustrial1(Industrial_Bean u) {
	int status=0;
	try {
		Connection con=DB.getcon();
		
		String sql = "insert into tbl_industrial_visit(industrial_id,comp_id,training_info,visit_date)" 
								+ "values(?,?,?,?)" ;
		PreparedStatement ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
		
		
		ps.setInt(1, u.getIndustrial_id());
		ps.setInt(2, u.getComp_id());
	   /* ps.setDate(3, u.getPosted_date());*/
		ps.setString(3, u.getTraining_info());
		ps.setDate(4, u.getVisit_date());
		
		status=ps.executeUpdate();
		
		int genId = 0;
		
		ResultSet generatedKeys = ps.getGeneratedKeys();
		if(generatedKeys.next()){
			genId = generatedKeys.getInt(1);
		}else {
			throw new SQLException();
		}
		
		PreparedStatement ps1 = con.prepareStatement("insert into tbl_job_post_comp_notifi(comp_id,indust_post_id,title,message) "
													+ "	values(?,?,?,?)");
		ps1.setInt(1, u.getComp_id());
		ps1.setInt(2, genId);
		ps1.setString(3, "Industrial Visit Posted");
		ps1.setString(4, "Industrial Visit Description Goes Here !!!!");
		ps1.executeUpdate();
		con.close();
		
	}
	
    	catch(Exception e)
	{
	    e.printStackTrace();
	}
	
	return status;
}

//



public static List<Industrial_Bean> getIndustrialRecords( int comid){
	List<Industrial_Bean> list = new ArrayList<Industrial_Bean>();
	
	try {
		Connection con=DB.getcon();
	PreparedStatement ps=con.prepareStatement("select  tbl_industrial_applied.* , tbl_colleges_reg.name " + 
									 " from tbl_industrial_applied " + 
									 " join tbl_colleges_reg on " + 
									 " tbl_industrial_applied.college_id = tbl_colleges_reg.clg_id "
									 + "where tbl_industrial_applied.comp_id = '"+comid+"' and tbl_industrial_applied.approval_status='Approved'");
	ResultSet rs=ps.executeQuery();
	while(rs.next()) {
		Industrial_Bean a=new Industrial_Bean();
		
				
		
	    a.setCollege_id(rs.getInt("college_id")); 
	    a.setTraining_info(rs.getString("training_info"));
	    a.setApplied_date(rs.getDate("applied_date"));
	    a.setVisit_date(rs.getDate("visit_date"));
		a.setName(rs.getString("name"));		
	    list.add(a);
	}
	
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return list;
}





public static Industrial_Bean viewIndustrial(int id) {
	Industrial_Bean Ibean= new Industrial_Bean();
	try {
		
		Connection con=DB.getcon();
		PreparedStatement ps=con.prepareStatement("select tbl_industrial_visit.*,tbl_companies_reg.* "
				+ " from tbl_industrial_visit "
				+ " join tbl_companies_reg on "
				+ " tbl_industrial_visit.comp_id=tbl_companies_reg.comp_id "
				+ " where tbl_industrial_visit.industrial_id=? ");
		ps.setInt(1, id);
		
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Ibean.setIndustrial_id(rs.getInt("industrial_id"));
			Ibean.setComp_id(rs.getInt("comp_id"));
			Ibean.setTraining_info(rs.getString("training_info"));
			
			Ibean.setVisit_date(rs.getDate("visit_date"));
			Ibean.setName(rs.getString("name"));
			Ibean.setCmpy_image(rs.getString("cmpy_img"));
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return Ibean;
}



public static int saveIndustrialApply(Industrial_Bean bean) {
	  int status=0;
	  
		try {
			Connection con=DB.getcon();
			String sql = "insert into tbl_industrial_applied(college_industrial_id,industrial_id,comp_id,"
							+ "college_id,training_info,visit_date) values(?,?,?,?,?,?) ";
			PreparedStatement ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			
			ps.setInt(1, bean.getCollege_industrial_id());

			ps.setInt(2, bean.getIndustrial_id());
			ps.setInt(3,bean.getComp_id());
			ps.setInt(4, bean.getCollege_id());
			ps.setString(5,bean.getTraining_info());
			ps.setDate(6, bean.getVisit_date());
			
	        status=ps.executeUpdate();
	        
	        int genId = 0;
	        ResultSet generatedKeys = ps.getGeneratedKeys();
	       
	        if(generatedKeys.next()) {
	        	genId = generatedKeys.getInt(1);
	        }else {
	        	throw new SQLException();
	        }
	        
	        PreparedStatement ps1 = con.prepareStatement("insert into tbl_std_notification(clg_id,industrial_id,title,message)"
	        		+ " values(?,?,?,?)");
	        ps1.setInt(1, bean.getCollege_id());
	        ps1.setInt(2, bean.getIndustrial_id());
	        ps1.setString(3, "Applied to Industrial Visit");
	        ps1.setString(4, "Industrial Visit Description goes here ......");
	        
	        ps1.executeUpdate();
	        con.close();
	        
			}
	
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

public static int deleteIndustrialVisit(int id) {
	int status=0;

	try {
		Connection con=DB.getcon();
		PreparedStatement ps=con.prepareStatement("delete from tbl_industrial_visit where industrial_id=?");
		ps.setInt(1, id);
		status=ps.executeUpdate();
		con.close();
	}
	catch(Exception e) {
		System.out.println(e);
	}
	return status;
}

public static int changeStatus(int id,String sts) {
	int status=0;
	
	try {
		Connection con = DB.getcon();
		PreparedStatement ps = con.prepareStatement("update tbl_industrial_applied set ind_applied_sts = '"+sts+"' where Industrial_id ='"+id+"'");
		status = ps.executeUpdate();
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return status;
}

	public static Industrial_Bean viewIndusrialAppln(int id) {
		Industrial_Bean bean = new Industrial_Bean();
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select tbl_industrial_applied.* , tbl_colleges_reg.*"
					+ " from tbl_industrial_applied "
					+ " join tbl_college_reg on "
					+ " tbl_industrial_applied.college_id = tbl_college_reg.clg_id "
					+ " where tbl_industrial_applied.college_industrial_id = '"+id+"' ");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				bean.setName(rs.getString("name"));
				bean.setCmpy_image(rs.getString("clg_image"));
				bean.setTraining_info(rs.getString("training_info"));
				bean.setApplied_date(rs.getDate("applied_date"));
				bean.setStatus(rs.getString("ind_applied_sts"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return bean;
	}

	
	public static List<Industrial_Bean> allIndustrialApplns(){
		List<Industrial_Bean> list = new ArrayList<Industrial_Bean>();
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select  tbl_industrial_applied.* , tbl_colleges_reg.name,tbl_colleges_reg.clg_image " + 
					"	 from tbl_industrial_applied " + 
					"	 join tbl_colleges_reg on " + 
					"	 tbl_industrial_applied.college_id = tbl_colleges_reg.clg_id ");
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Industrial_Bean bean = new Industrial_Bean();
				bean.setIndustrial_id(rs.getInt("college_industrial_id"));
				bean.setCmpy_image(rs.getString("clg_image"));
				bean.setName(rs.getString("name"));
				bean.setApplied_date(rs.getDate("applied_date"));
				bean.setApproval_status(rs.getString("approval_status"));
				
				list.add(bean);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	  public static int status_IndustrialApplnApprove(int id) {
			int status = 0;
			try {
				Connection con = DB.getcon();
				
				PreparedStatement ps = con.prepareStatement("select approval_status from tbl_industrial_applied where college_industrial_id='"+id+"'");
				ResultSet rs = ps.executeQuery();
				rs.next();
				String JobApplnStatus = rs.getString(1);
				System.out.println("JobApplnStatus is :::>>"+JobApplnStatus);
				
					ps = con.prepareStatement("update tbl_industrial_applied set approval_status=? where college_industrial_id = '"+id+"'" );
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
		
	  public static int status_IndustrialVisitPostApprove(int id) {
			int status = 0;
			try {
				Connection con = DB.getcon();
				PreparedStatement ps = con.prepareStatement("select approval_status from tbl_industrial_visit where industrial_id='"+id+"'");
				ResultSet rs = ps.executeQuery();
				rs.next();
				String JobApplnStatus = rs.getString(1);
				System.out.println("IndustrialVisitStatus is :::>>"+JobApplnStatus);
				
				ps = con.prepareStatement("update tbl_industrial_visit set approval_status=? where industrial_id = '"+id+"'" );
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
	
	  public static List<Industrial_Bean> viewIndustrialPosted(int id){
		  List<Industrial_Bean> list = new ArrayList<Industrial_Bean>();
		  try {
			  Connection con = DB.getcon();
			  PreparedStatement ps = con.prepareStatement("select * from tbl_industrial_visit where comp_id='"+id+"'");
			  ResultSet rs = ps.executeQuery();
			  while(rs.next()) {
				  Industrial_Bean bean = new Industrial_Bean();
				  bean.setIndustrial_id(rs.getInt("industrial_id"));
				  bean.setPosted_date(rs.getDate("posted_date"));
				  bean.setTraining_info(rs.getString("training_info"));
				  bean.setVisit_date(rs.getDate("visit_date"));
				  bean.setApproval_status(rs.getString("approval_status"));
				  list.add(bean);
				  
			  }
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
		  return list;
	  }
	  
	  
}
