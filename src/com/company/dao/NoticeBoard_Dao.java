package com.company.dao;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.company.bean.Campus_Bean;
import com.company.bean.NoticeBoard_Bean;


public class NoticeBoard_Dao {

	public static List<NoticeBoard_Bean> getNoticeRecord(){
		List<NoticeBoard_Bean> list=new ArrayList<NoticeBoard_Bean>();
		
		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("select * from tbl_notice_board");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				NoticeBoard_Bean i=new NoticeBoard_Bean();
				
				
				i.setNotice_id(rs.getInt("notice_id"));
				
				i.setSubject(rs.getString("subject"));
			
				i.setStart_date(rs.getDate("start_date"));
				i.setNotice_description(rs.getString("notice_description"));
				i.setEnd_date(rs.getDate("end_date"));
				i.setStatus(rs.getString("status"));
				i.setApproval_status(rs.getString("Approval_status"));
				
				
				list.add(i);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
public static 	NoticeBoard_Bean getNoticeRecordById(int id) {
		
	NoticeBoard_Bean i=null;
		
		try {
			
			Connection con=DB.getcon();
			 PreparedStatement ps=con.prepareStatement("select * from tbl_notice_board where notice_id=?");
			 ps.setInt(1,id);
			 ResultSet rs=ps.executeQuery();
			
			 while(rs.next()){
				
				 i=new NoticeBoard_Bean();
				    i.setNotice_id(rs.getInt("notice_id"));
					i.setSubject(rs.getString("subject"));
					i.setStart_date(rs.getDate("notice_date"));
					i.setNotice_description(rs.getString("notice_description"));
					i.setEnd_date(rs.getDate("end_date"));
					i.setStatus(rs.getString("status"));
					i.setApproval_status(rs.getString("approval_status"));
				 }
			 }catch(Exception e) {
			e.printStackTrace();
			}
		
		return i;
		
}




public static int appliedNotice(NoticeBoard_Bean u) {
	int status=0;
	try {
		Connection con=DB.getcon();
		
		String sql = "insert into tbl_notice_board(notice_id,subject,notice_date,notice_description,end_date,status,approval_status)" 
								+ "values(?,?,?,?,?,?,?)" ;
		PreparedStatement ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
		
		
		ps.setInt(1, u.getNotice_id());
		ps.setString(2, u.getSubject());
	    ps.setDate(3, (Date) u.getStart_date());
		ps.setString(4, u.getNotice_description());
		ps.setDate(5,(Date) u.getEnd_date());
		ps.setString(6, u.getStatus());
		ps.setString(7, u.getApproval_status());
		
		status=ps.executeUpdate();
		
		int genId = 0;
		
	}
    	catch(Exception e)
	{
	    e.printStackTrace();
	}
	System.out.println("Method Executed");
	return status;

	}

public static List<NoticeBoard_Bean> viewAllNoticePosting(){
	List<NoticeBoard_Bean>list=new ArrayList<NoticeBoard_Bean>();
	
	try {
		Connection con=DB.getcon();
		PreparedStatement ps=con.prepareStatement("select * from tbl_notice_board");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			NoticeBoard_Bean p=new NoticeBoard_Bean();
			p.setNotice_id(rs.getInt("notice_id"));
			p.setSubject(rs.getString("subject"));
			p.setStart_date(rs.getDate("start_date"));
			p.setNotice_description(rs.getString("notice_description"));
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



  public static NoticeBoard_Bean viewNotice(int id) {
	NoticeBoard_Bean Ibean= new NoticeBoard_Bean();
	try {
		
		Connection con=DB.getcon();
		PreparedStatement ps=con.prepareStatement("select * from tbl_notice_board ");
		ps.setInt(1, id);
		
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			
			Ibean.setNotice_id(rs.getInt("notice_id"));
			Ibean.setSubject(rs.getString("subject"));
			Ibean.setStart_date(rs.getDate("start_date"));
			Ibean.setNotice_description(rs.getString("notice_description"));
			Ibean.setEnd_date(rs.getDate("end_date"));
			
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	return Ibean;
  }



public static int saveNoticeApply( NoticeBoard_Bean bean) {
	  int status=0;
	  
		try {
			Connection con=DB.getcon();
			String sql = "insert into tbl_notice_board(notice_id,subject,start_date,notice_description,end_date,status,approval_status) values(?,?,?,?,?,?,?) ";
			PreparedStatement ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			
			ps.setInt(1, bean.getNotice_id());

			
			ps.setString(2,bean.getSubject());
			ps.setDate(3,(Date) bean.getStart_date());
			ps.setString(4,bean.getNotice_description());
			ps.setDate(5,(Date) bean.getEnd_date());
			ps.setString(6, bean.getStatus());
			ps.setString(7, bean.getApproval_status());
	        status=ps.executeUpdate();
	        
	        int genId = 0;
	        ResultSet generatedKeys = ps.getGeneratedKeys();
	       
	        if(generatedKeys.next()) {
	        	genId = generatedKeys.getInt(1);
	        }else {
	        	throw new SQLException();
	        }
	        
	       
	        
		}
	
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

public static int deleteNotice(int id) {
	int status=0;

	try {
		Connection con=DB.getcon();
		PreparedStatement ps=con.prepareStatement("delete from tbl_notice_board where notice_id=?");
		ps.setInt(1, id);
		status=ps.executeUpdate();
		con.close();
	}
	catch(Exception e) {
		System.out.println(e);
	}
	return status;
}
	 
	
	  public static List<NoticeBoard_Bean> viewNoticePosted(int id){
		  List<NoticeBoard_Bean> list = new ArrayList<NoticeBoard_Bean>();
		  try {
			  Connection con = DB.getcon();
			  PreparedStatement ps = con.prepareStatement("select * from tbl_notice_board where notice_id='"+id+"'");
			  ResultSet rs = ps.executeQuery();
			  while(rs.next()) {
				  NoticeBoard_Bean bean = new NoticeBoard_Bean();
				  bean.setNotice_id(rs.getInt("notice_id"));
				  bean.setStart_date(rs.getDate("start_date"));
				  bean.setNotice_description(rs.getString("notice_description"));
				  bean.setEnd_date(rs.getDate("end_date"));
				  bean.setApproval_status(rs.getString("approval_status"));
				  list.add(bean);
				  
			  }
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
		  return list;
	  }
	  
}  


