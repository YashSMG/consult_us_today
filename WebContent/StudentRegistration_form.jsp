<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>

<%@page import="com.company.dao.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

    
    
<%

Connection conn = DB.getcon();
Statement statement = null;
ResultSet resultSet = null;
	
%>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Student Registration</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
    <!-- forms CSS
		============================================ -->
    <link rel="stylesheet" href="css/form/all-type-forms.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
	<div class="error-pagewrap">
		<div class="error-page-int">
			<div class="text-center custom-login">
				<h3>Student Registration</h3>
				<p></p>
			</div>
			<div class="content-error">
				<div class="hpanel">
                    <div class="panel-body" style="width:148%;margin-left: -91px;">
                        <form action="StudentRegistration" method="post" id="loginForm" enctype='multipart/form-data'>
                            <div class="row">
                                <div class="form-group col-lg-12">
                                    <label>Name</label>
                                    <input name="name" class="form-control">
                                </div>
                                <div class="form-group col-lg-6" style="width: 50%;margin-bottom: 15px;">
                                    <label>Email</label>
                                     <input name="email" type="Email" class="form-control" placeholder="example@gmail.com">
                                    
                                </div>
                               
                               <div class="form-group col-lg-6" style="width: 50%;margin-bottom: 15px;">
                                    <label>Contact No.</label>
                                     <input name="contact_no" class="form-control">
                        
                                </div>
                               
                               <div class="form-group col-lg-6" style="width: 50%;margin-bottom: 15px;">
                                
                                    <label>Passout Status</label>
                                    <select id="menu" name="passout_id" class="form-control" >
                                    <option >Select passing status</option>
           <%
			try{
			Statement st=conn.createStatement();
			String sql ="select * from tbl_student_status";
		    ResultSet rs = st.executeQuery(sql);
		    
		    while(rs.next()){                                           
            %>                              
                                   <!--  <input type=" text" name="passout_id" class="form-control"> -->
                                     <option value="<%=rs.getInt("passout_id")%>"><%=rs.getString("status") %></option>
			 <%   
		    }
			}catch(Exception e){
				e.printStackTrace();
			}
            %>
									</select>
                                </div>
                                <div class="form-group col-lg-6" style="width: 50%;margin-bottom: 15px;">
                                    <label>Passout Year</label>
                                    <div class="form-group">
                                        <select name="passout_year" class="form-control">  
                                         <option>Select Passout Year</option>                             
            <%
			try{
			Statement st=conn.createStatement();
			String sql ="select * from tbl_stdudent_passout";
		    ResultSet rs = st.executeQuery(sql);
		    
		    while(rs.next()){                                           
            %>        
                        
                          <option value="<%=rs.getInt("passout_year")%>"><%=rs.getInt("year") %></option>
            <%   
		    }
			}catch(Exception e){
				e.printStackTrace();
			}
            %>                             
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-lg-6" style="width: 50%;margin-bottom: 15px;">
                                    <label>Stream</label>
                                    <input name="stream" class="form-control">
                                </div>
                               <div class="form-group col-lg-12">
                                    <label>Address</label>
                                    <input name="address" class="form-control">
                                </div>
                               <div class="form-group col-lg-6" style="width: 50%;margin-bottom: 15px;">
                                    <label>Qualification</label>
                                    <input name="qualification" class="form-control">
                                </div>
                               
                               <div class="form-group col-lg-6" style="width: 50%;margin-bottom: 15px;">
                                    <label>Date of Birth</label>
                                    <br>
                                    <input name="dob" type="date" name="DOB" class="form-control">
                                </div>
                               <div class="form-group col-lg-6" style="width: 50%;margin-bottom: 15px;">
                                    <label>Gender</label>
                                    <div>
                                    <input type="radio" name="gender" value="Male">Male
                                    <input type="radio" name="gender" value="Female">Female
                                    </div>
                                </div>
                               
                               <div class="form-group col-lg-6" style="width: 50%;margin-bottom: 15px;">
                                    <label>College </label>
                            
                                    <div class="form-group">
                                        <select name="clg_id" class="form-control">                               
                                            <option>Select College</option>
  <%
			try{
			Statement st=conn.createStatement();
			String sql ="select * from tbl_colleges_reg";
		    ResultSet rs = st.executeQuery(sql);
		    
		    while(rs.next()){                                           
            %>        
                        
                          <option value="<%=rs.getInt("clg_id")%>"><%=rs.getString("name") %></option>
            <%   
		    }
			}catch(Exception e){
				e.printStackTrace();
			}
            %>    
                                        </select>
                                    </div>
                                </div>
                               
                                <div class="form-group col-lg-6">
                                    <label>Password</label>
                                    <input name="password" type="password" class="form-control">
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>Confirm Password</label>
                                    <input name="confirm password" type="password" class="form-control">
                                </div>
                                <div class="form-group col-lg-6">
                                    <label>City</label>
                                    <input  name="city" class="form-control">
                                </div>
                                <div class="form-group col-lg-12">
                               
                                  <div class="form-group col-sm-6">
                                     <label>Student Image</label>
                                     <br>
                                     <img id="blah" src="http://placehold.it/120x120" 
                                     		style="height: 100px;width: 100px;"><br>
                                  </div>
                                    
                                    <div class="col-sm-6" style="padding-right: 310px;">
                                      <label class=newbtn>                                       
                                        <input name="image" id="pic" style="margin-bottom:0px;" class='pis' onchange="readURL(this);" type="file">
                                      </label>
                                    </div>
                                    
                                </div>
                                
                               
                                
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-success loginbtn">Register</button>
                                <button class="btn btn-default">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
			</div>
			<div class="text-center login-footer">
				<p>Copyright © 2019. All rights reserved.</a></p>
			</div>
		</div>   
    </div>
    <!-- jquery
		============================================ -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="js/metisMenu/metisMenu.min.js"></script>
    <script src="js/metisMenu/metisMenu-active.js"></script>
    <!-- tab JS
		============================================ -->
    <script src="js/tab.js"></script>
    <!-- icheck JS
		============================================ -->
    <script src="js/icheck/icheck.min.js"></script>
    <script src="js/icheck/icheck-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="js/main.js"></script>
    <!-- tawk chat JS
		============================================ -->
    <script src="js/tawk-chat.js"></script>
    <script src="js/signup1.js" type="text/javascript"></script>
    
    <script>
 
		 $('.newbtn').bind("click" , function () {
		        $('#pic').click();
		 });
		 
		  function readURL(input) {
		            if (input.files && input.files[0]) {
		                var reader = new FileReader();
		
		                reader.onload = function (e) {
		                    $('#blah')
		                        .attr('src', e.target.result);
		                };
		
		                reader.readAsDataURL(input.files[0]);
		            }
		        }
		        $('.newbtn').bind("click" , function () {
		        $('#pic').click();
		 });
         
        </script>
    
    
</body>

</html>