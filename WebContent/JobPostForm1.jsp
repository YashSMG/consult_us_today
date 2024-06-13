<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.company.dao.*" %>
    <%@page import="com.company.bean.JobPost_Bean" %>
    
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ include file="Header.jsp" %>

    
    
<%

Connection conn = DB.getcon();
Statement statement = null;
ResultSet resultSet = null;
	
%>
    
    
    
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Basic Form Element | Kiaalap - Kiaalap Admin Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
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
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- educate icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/educate-custon-icon.css">
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
    <!-- modals CSS
		============================================ -->
    <link rel="stylesheet" href="css/modals.css">
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
    <!-- <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"> -->
  <!-- <link rel="icon" href="images/favicon.ico" type="image/x-icon"> -->
   <script src="js/js validation.js"></script>
   <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css">
        
        
       <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
      <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.js"></script>
     <script type="text/javascript" src="js/member_details.js"></script>  
     <style>
        h1{
            font-family:"Times New Roman", Times, serif;
        
        }
     </style>
     
        
</head>

<body>
            
       
        <div class="row" style="margin-right: -50px">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" style="width: 107%">
                        <div class="sparkline12-list" style="margin-top: -25px">
                            <div class="col-sm-2">
                                
                            </div>

                            <div class="col-md-8" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); 
                             margin-top: 20px; margin-left: 50px; margin-right:100px; ">
                            
                            <div id="formcolor" style="background-color: #ffffff;">

                                 <div style="padding-top: 25px;">
                                           <center><h1><b>JobPost  </b></h1></center>
                                 </div>
                            
                            <div class="sparkline12-graph" style="text-align: center;">
                                <div class="basic-login-form-ad" style="text-align: center;">
                                
                                <!-- <center><form action="JobPost.jsp" style="margin-left: 370px;"> -->
                                
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                             <div class="all-form-element-inner">


                                                <center><form action="JobPost1.jsp" style="margin-left: 370px;">

                                                    <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    
               
               
                                                                <label class="" style="margin-left: -106px;"> Job Title:</label>
                                                                <input type="hidden" name="comp_id" value="1">
                                                                <input id="name" name="job_title" type="text" class="form-control" style="border-radius: 15px; width: 400px;margin-left: -110px;" />
                                                                 <div id="ename" style="color:red; height:0.1px; font-size:12px;"></div> 
                                                            </div>
                                                            
                                                        </div>
                                                    </div>

                                                    <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                <label class="login2" style="margin-left: -106px;">Technology:</label>
                                                                <input id="name" name="technology" type="text" class="form-control" style="border-radius: 15px; width: 400px;margin-left: -110px;" />
                                                                 <div id="ename" style="color:red; height:0.1px; font-size:12px;"></div>
                                                            </div>
                                                           
                                                        </div>
                                                    </div>
                                                    <div class="form-group-inner">
                                                        <div class="row">
                                                           
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                 <label  class="" style="margin-left: -106px;">Job Type:</label>
                                                                 
                                                                 



                                                                  <select id="menu" name="job_type" class="form-control" style="border-radius: 15px;width: 400px;margin-left: -110px;">
            <%
			try{
			Statement st=conn.createStatement();
			String sql ="select * from tbl_type";
		    ResultSet rs = st.executeQuery(sql);
		    
		    while(rs.next()){                                           
                     %>      
                                                                    
                                                                     <option value="<%=rs.getInt("type_id")%>"><%=rs.getString("type") %></option>                                                
                   <%   
		    }
			}catch(Exception e){
				e.printStackTrace();
			}
                   %>
                                                                 </select>
                                                            </div>

                                                        </div>
                                                    </div>
                                                     <div class="form-group-inner">
                                                        <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                 <label class="" style="margin-left: -106px;">Vacancies:</label>
                                                                <input name="vacancies"type="text" class="form-control" style="border-radius: 15px;width: 400px;margin-left: -110px;"/>
                                                                 <div id="edate" style="height: 0.1px;"></div>                                                           </div>
                                                        </div>
                                                    </div>


                                                    <div class="form-group-inner">
                                                        <div class="row">
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                 <label class="" style="margin-left: -106px;">Other(Skills,venue,etc):</label>
                                                                 <textarea name="other"class="form-control" style="border-radius: 15px;width: 400px;margin-left: -110px;"></textarea>
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                    <!-- <div class="form-group-inner">
                                                        <div class="row">
                                                           
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                 <label class="" style="margin-left: -106px;">Posted Date</label>
                                                                <input name="posted_date" type="date" class="form-control" style="border-radius: 15px;width: 400px;margin-left: -110px;"/>
                                                                 <div id="edate" style="height: 0.1px;">
                                                                     
                                                                 </div> 
                                                            </div>
                                                        </div>


                                                    
                                                    
                                                    </div> -->
                                                        <div class="form-group-inner">
                                                           <div class="row" style="padding-bottom: 25px;">
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                                <button type="submit" class="btn btn-primary" style="margin-left:-127px" onclick="return validate()">Submit</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    
                                                    </form>
                                                  </center>
                                            </div>
                                           
                                            </div>
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Basic Form End-->
     <%@ include file="Footer.jsp" %>
      

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
</body>

</html>