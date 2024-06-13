package com.company.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.company.bean.Company_Bean;

public class Company_Dao {
	
	public static List<Company_Bean> getCompanyRecord(){
		
		List <Company_Bean> list=new ArrayList<Company_Bean>();
		
		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("select * from tbl_companies_reg where approval_status='Approved'" );
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				
				Company_Bean a=new Company_Bean();
				
				a.setComp_id(rs.getInt("comp_id"));
				a.setName(rs.getString("name"));
				a.setEmail(rs.getString("email"));
				a.setContact_no(rs.getLong("contact_no"));
				a.setPassword(rs.getString("password"));
				a.setAddress(rs.getString("address"));
				a.setWebsite(rs.getString("website"));
				a.setCity(rs.getString("city"));
				a.setCmpy_image(rs.getString("cmpy_img"));
				a.setLogin_status(rs.getString("login_sts"));
				list.add(a);
				
				}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
	
	
public static List<Company_Bean> viewAllCompanies(){
		
		List <Company_Bean> list=new ArrayList<Company_Bean>();
		
		try {
			Connection con=DB.getcon();
			PreparedStatement ps=con.prepareStatement("select * from tbl_companies_reg" );
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				Company_Bean a=new Company_Bean();				
					a.setComp_id(rs.getInt("comp_id"));
					a.setName(rs.getString("name"));
					a.setCity(rs.getString("city"));
					a.setWebsite(rs.getString("website"));
					a.setCmpy_image(rs.getString("cmpy_img"));
					a.setLogin_status(rs.getString("login_sts"));
					a.setComp_priority(rs.getString("comp_priority"));
					a.setCategory(rs.getInt("category"));
					list.add(a);			
				}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
		public static Company_Bean getCompanyRecordById(int id) {
		
		Company_Bean a=null;
		
		try {
			
			Connection con=DB.getcon();
			 PreparedStatement ps=con.prepareStatement("select * from tbl_companies_reg where comp_id=?");
			 ps.setInt(1,id);
			 ResultSet rs=ps.executeQuery();
			
			 while(rs.next()){
				
				 a=new Company_Bean();
				 
				    a.setComp_id(rs.getInt("comp_id"));
					a.setName(rs.getString("name"));
					a.setEmail(rs.getString("email"));
					a.setContact_no(rs.getLong("contact_no"));
					a.setPassword(rs.getString("password"));
					a.setAddress(rs.getString("address"));
					a.setWebsite(rs.getString("website"));
					a.setCity(rs.getString("city"));
					a.setCmpy_image(rs.getString("cmpy_img"));
					
				 }
			 }catch(Exception e) {
			e.printStackTrace();
			}
		
		return a;
		
	}
		
		
		
		public static int registerCompany(Company_Bean bean)
		{
			int status=0;
			try {
				Connection con=DB.getcon();
				PreparedStatement ps=con.prepareStatement("insert into tbl_companies_reg(name,email,contact_no,password,address,website,city,cmpy_img)values(?,?,?,?,?,?,?,?)");
				ps.setString(1,bean.getName());
				ps.setString(2,bean.getEmail());
				ps.setLong(3,bean.getContact_no());
				ps.setString(4,bean.getPassword());
				ps.setString(5,bean.getAddress());
				ps.setString(6,bean.getWebsite());
				ps.setString(7,bean.getCity());
				ps.setString(8,bean.getCmpy_image());
				
				ps.executeUpdate();
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
					
			}
			System.out.println("Method executed");
			return status;
		}
		
		
		
		//Ruchita
		
		
		public static Company_Bean getRecordById(int id){
			Company_Bean c=null;
		
			try {
				
				Connection con=DB.getcon();
				PreparedStatement ps=con.prepareStatement("select * from tbl_companies_reg where comp_id=?");
				ps.setInt(1,id);
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					c=new Company_Bean();
					
					c.setName(rs.getString("name"));
					c.setEmail(rs.getString("email"));
					c.setContact_no(rs.getLong("contact_no"));
					c.setPassword(rs.getString("password"));
					c.setAddress(rs.getString("address"));
					c.setWebsite(rs.getString("website"));
					c.setCity(rs.getString("city"));
					c.setCmpy_image(rs.getString("cmpy_img"));
					
				
					}
				
				System.out.println("Method executed");
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			return c;
		
		}

		
		public static int deleteCompany(int id) {
			int status=0;
		
			try {
				Connection con=DB.getcon();
				PreparedStatement ps=con.prepareStatement("delete from tbl_companies_reg where comp_id=?");
				ps.setInt(1, id);
				status=ps.executeUpdate();
				con.close();
			}
			catch(Exception e) {
				System.out.println(e);
			}
			return status;
		}
   
		public static int UpdateCompany(int id) {
			int status=0;
		
			try {
				Connection con=DB.getcon();
				PreparedStatement ps=con.prepareStatement("Update  tbl_companies_reg where comp_id=?");
				ps.setInt(1, id);
				status=ps.executeUpdate();
				con.close();
			}
			catch(Exception e) {
				System.out.println(e);
			}
			return status;
		}
		
		
}

