package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.company.bean.Student_Bean;

public class Student_Dao {
	
	public static List<Student_Bean> getAllStudentRecord(){
		List<Student_Bean> list = new ArrayList<Student_Bean>();
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select tbl_student_reg.*,tbl_stdudent_passout.year,tbl_student_status.status,"
					+ "									tbl_colleges_reg.name AS clgName "
					+ "									from tbl_student_reg "
					+ "									join tbl_student_status on "
					+ "									tbl_student_reg.passout_id = tbl_student_status.passout_id "
					+ "									join tbl_stdudent_passout on "
					+ " 								tbl_student_reg.passout_year = tbl_stdudent_passout.passout_year "
					+ "									join tbl_colleges_reg on "
					+ "									tbl_student_reg.clg_id = tbl_colleges_reg.clg_id " );
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				
				Student_Bean g=new Student_Bean();
				
				g.setStd_id(rs.getInt("std_id"));
				//g.setPassout_id(rs.getInt("status"));
				g.setPassing_status(rs.getString("status"));
				g.setPassout_year(rs.getInt("year"));
				//g.setClg_id(rs.getInt("clg_id"));
				
				g.setName(rs.getString("name"));
				g.setEmail(rs.getString("email"));
				g.setContact_no(rs.getLong("contact_no"));
				g.setPassword(rs.getString("password"));
				g.setAddress(rs.getString("address"));
				g.setStream(rs.getString("stream"));
				g.setQualification(rs.getString("qualification"));
				g.setDob(rs.getDate("dob"));
				g.setGender(rs.getString("gender"));
				g.setCity(rs.getString("city"));
				g.setCollege(rs.getString("clgName"));
				g.setImage(rs.getString("std_image"));
				g.setLogin_status(rs.getString("login_sts"));
				g.setStud_priority(rs.getString("stud_priority"));
				list.add(g);
				
				}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	//Darshan
	
	public static List<Student_Bean> getStudentRecord(int clg_id){
		List<Student_Bean>list=new ArrayList<Student_Bean>();
		
	
		try {
			
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("select * from tbl_student_reg where clg_id='"+clg_id+"' and login_sts='Enable' ");
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				
				Student_Bean g=new Student_Bean();
				
				g.setStd_id(rs.getInt("std_id"));
				g.setPassout_id(rs.getInt("passout_id"));
				g.setPassout_year(rs.getInt("passout_year"));
				g.setClg_id(rs.getInt("clg_id"));
				g.setName(rs.getString("name"));
				g.setEmail(rs.getString("email"));
				g.setContact_no(rs.getLong("contact_no"));
				g.setPassword(rs.getString("password"));
				g.setAddress(rs.getString("address"));
				g.setStream(rs.getString("stream"));
				g.setQualification(rs.getString("qualification"));
				g.setDob(rs.getDate("dob"));
				g.setGender(rs.getString("gender"));
				g.setCity(rs.getString("city"));
				g.setImage(rs.getString("std_image"));
				list.add(g);
				
				}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
	
	
	
	public static int studentssave(Student_Bean bean) {
		  Student_Bean c = null;
		  
		  int status=0;
		  
			try {
				Connection con=DB.getcon();
				PreparedStatement ps=con.prepareStatement("insert into tbl_student_reg(passout_id, passout_year,clg_id,name,email,contact_no,password,address,stream,qualification,dob,gender,city) values(?,?,?,?,?,?,?,?,?,?,?,?,?) ");
				
				ps.setInt(1, bean.getPassout_id());
				ps.setInt(2,bean.getPassout_year());
				ps.setInt(3,bean.getClg_id());
				ps.setString(4, bean.getName());
				ps.setString(5,bean.getEmail());
				ps.setLong(6, bean.getContact_no());
				ps.setString(7, bean.getPassword());
				ps.setString(8, bean.getAddress());
				ps.setString(9,bean.getStream());
				ps.setString(10,bean.getQualification());
				ps.setDate(11, bean.getDob());
				ps.setString(12,bean.getGender() );
				ps.setString(13, bean.getCity());
				
				status=ps.executeUpdate();
				
				
				}
		
		
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return status;
		}
		
	public static Student_Bean viewStudent(int id)
	{
		Student_Bean bean = null;
		try {
			Connection con=DB.getcon();///*"select * from tbl_student_reg where std_id='"+id+"' "*/
			PreparedStatement ps=con.prepareStatement("select tbl_student_reg.std_id,tbl_student_reg.name,tbl_student_reg.email,"
					+ "tbl_student_reg.contact_no,tbl_student_reg.address,tbl_student_reg.stream,tbl_student_reg.qualification,tbl_student_reg.dob,"
					+ "tbl_student_reg.gender,tbl_student_reg.city,tbl_student_reg.std_reg_date,tbl_student_reg.std_image ,tbl_student_reg.passout_year, "
					+ "	tbl_student_reg.clg_id	,tbl_student_reg.passout_id,tbl_stdudent_passout.year,tbl_student_status.status,"
							+ "									tbl_colleges_reg.name AS clgName "
							+ "									from tbl_student_reg "
							+ "									join tbl_student_status on "
							+ "									tbl_student_reg.passout_id = tbl_student_status.passout_id "
							+ "									join tbl_stdudent_passout on "
							+ " 								tbl_student_reg.passout_year = tbl_stdudent_passout.passout_year "
							+ "									join tbl_colleges_reg on "
							+ "									tbl_student_reg.clg_id = tbl_colleges_reg.clg_id "
							+ "									where tbl_student_reg.std_id = '"+id+"'");
			
			
			ResultSet rs=ps.executeQuery();
			 
			while(rs.next()) {
				bean=new Student_Bean();
				//bean.setPassout_id(rs.getInt("passout_id"));
				bean.setPassing_status(rs.getString("status"));
				bean.setPassout_year(rs.getInt("year"));
				//bean.setPassout_year(rs.getInt("passout_year"));
				
				bean.setClg_id(rs.getInt("clg_id"));
				bean.setName(rs.getString("name"));
				bean.setEmail(rs.getString("email"));
				bean.setContact_no(rs.getLong("contact_no"));
				bean.setAddress(rs.getString("address"));
				bean.setStream(rs.getString("stream"));
				bean.setQualification(rs.getString("qualification"));
				bean.setDob(rs.getDate("dob"));
				bean.setGender(rs.getNString("gender"));
				bean.setCity(rs.getString("city"));
				bean.setCollege(rs.getString("clgName"));
				bean.setReg_date(rs.getDate("std_reg_date"));
				bean.setImage(rs.getString("std_image"));
				bean.setPassout_year_id(rs.getInt("passout_year"));
				bean.setPassout_id(rs.getInt("passout_id"));
				//bean.setPassword(rs.getString("password"));
				
				/*bean.setStd_id(rs.getInt(1));
				bean.setPassing_status(rs.getString(2));
				bean.setPassout_year(rs.getInt(3));
				bean.setCollege(rs.getString(4));
				bean.setName(rs.getString(5));
				bean.setEmail(rs.getString(6));
				bean.setContact_no(rs.getLong(7));
				bean.setPassword(rs.getString(8));
				bean.setAddress(rs.getString(9));
				bean.setStream(rs.getString(10));
				bean.setQualification(rs.getString(11));
				bean.setDob(rs.getDate(12));
				bean.setGender(rs.getNString(13));
				bean.setCity(rs.getString(14));
				*/
			
			}
			System.out.println("Inside Try block");
			
		}
		catch (Exception e){
			System.out.println("Inside catch block");
			e.printStackTrace();
		}
		
		return bean;
	}
	
		
		
		
		public static int updateStudents(Student_Bean bean)
		{
			
			 int status=0;
			 
			try {
				Connection con=DB.getcon();
				PreparedStatement ps=con.prepareStatement("update tbl_student_reg set passout_id=?,passout_year=?,clg_id=?,name=?,email=?,contact_no=?,password=?,address=?,stream=?,qualification=?,dob=?,gender=?,city=? where std_id=? ");
				
				ps.setInt(1, bean.getPassout_id());
				ps.setInt(2, bean.getPassout_year());
				ps.setInt(3, bean.getClg_id());
				ps.setString(4,bean.getName());
				ps.setString(5, bean.getEmail());
				ps.setLong(6, bean.getContact_no());
				ps.setString(7, bean.getPassword());
				ps.setString(8, bean.getAddress());
				ps.setString(9, bean.getStream());
				ps.setString(10, bean.getQualification());
				ps.setDate(11, bean.getDob());
				ps.setString(12, bean.getGender());
				ps.setString(13, bean.getCity());
				
				ps.setInt(14, bean.getStd_id());
				status= ps.executeUpdate();
				
				
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			
			
			return status;
			
		}
		
		public static int deleteStudent(int id) {
			int status=0;
		
			try {
				Connection con=DB.getcon();
				PreparedStatement ps=con.prepareStatement("delete from tbl_student_reg where std_id=?");
				ps.setInt(1, id);
				status=ps.executeUpdate();
				con.close();
			}
			catch(Exception e) {
				System.out.println(e);
			}
			return status;
		}
	
	public static int enableStudent(int id) {
		int status = 0;
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select login_sts from tbl_student_reg where std_id='"+id+"'");
			ResultSet rs = ps.executeQuery();
			rs.next();
			String LoginStatus = rs.getString(1);
			
				ps = con.prepareStatement("update tbl_student_reg set login_sts=? where std_id = '"+id+"'" );
			if(LoginStatus.equals("Disable")) {
			ps.setString(1,"Enable");
			}
			else {
				ps.setString(1, "Disable");
			}
			
			ps.executeUpdate();
					
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}
	
	public static int changeStdPriority(int id) {
		int status = 0;
		try {
			Connection con = DB.getcon();
			PreparedStatement ps = con.prepareStatement("select stud_priority from tbl_student_reg where std_id='"+id+"'");
			ResultSet rs = ps.executeQuery();
			rs.next();
			String LoginStatus = rs.getString(1);
			
			ps = con.prepareStatement("update tbl_student_reg set stud_priority=? where std_id = '"+id+"'" );
			if(LoginStatus.equals("Unpaid")) {
				ps.setString(1,"Paid");
			}
			else {
				ps.setString(1, "Unpaid");
			}
			ps.executeUpdate();		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return status;
	}
		
	
}
