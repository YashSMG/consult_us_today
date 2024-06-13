<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="com.company.bean.*" %>
<%@ page import="com.company.dao.*" %>    
<%@ page import="java.util.List" %>
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html class="no-js" lang="en">

	<%
			int count1 = 0 ;
	%>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>DashBoard  Admin Panel</title>
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
    <link rel="stylesheet" type="text/css" href="css/preview.css">

    <link rel="stylesheet" type="text/css" href="css/data-table/bootstrap-editable.css">
    <link rel="stylesheet" type="text/css" href="css/data-table/bootstrap-table.css">
    
    
	<style type="text/css">
		.badge-notify{
			background:red;
			position:relative;
			top:-20px;
			left:-10px;
		}
	</style>


</head>

<body>
		<%
    	if(session.getAttribute("name") == null){
    		response.sendRedirect("index.jsp");
    	}else{
    	
    	%>

    <!--[if lt IE 8]>
		<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	<![endif]-->
    <!-- Start Left menu area -->
    <div class="left-sidebar-pro">
        <nav id="sidebar" class="">
            
            <div class="sidebar-header">
                <a href="index.html">
                    <img class="main-logo" src="img/logo/logo.png" alt="" 
                         style="width: 200px;height: 137px;margin-top: 10px" />
                </a>
                <strong><a href="index.html"><img src="img/logo/logosn.png" alt="" /></a></strong>
            </div>
            
            <div class="left-custom-menu-adp-wrap comment-scrollbar">
                <nav class="sidebar-nav left-sidebar-menu-pro">     

                    <div>
                    <ul class="metismenu" id="menu1">
                    <%
                    if(session.getAttribute("usertype").equals("College")){
                    %>
                        <li>
                            <a class="has-arrow" href="all-professors.html" aria-expanded="false">
                                <span class="educate-icon educate-professor icon-wrap"></span> 
                                <span class="mini-click-non">College</span>
                            </a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li>
                                    <a title="Profile" href="CollegeProfile.jsp">
                                        <span class="mini-sub-pro">Profile</span>
                                    </a>
                                </li>
                                <li>
                                    <a title="Profile" href="Update_College_Profile.jsp">
                                        <span class="mini-sub-pro">Update Profile</span>
                                    </a>
                                </li>
                                <li>
                                    <a title="Company List" href="CompanyList.jsp">
                                        <span class="mini-sub-pro">Company List</span>
                                    </a>
                                </li>
                                
                                <li>
                                    <a title="Student List" href="StudentList.jsp">
                                        <span class="mini-sub-pro">Student List</span>
                                    </a>
                                </li>
                                <li>
                                    <a title="Campus" href="Campus.jsp">
                                        <span class="mini-sub-pro">Campus List</span>
                                    </a>
                                </li>
                                <li>
                                    <a title="Industrial Visit" href="IndustrialVisit.jsp">
                                        <span class="mini-sub-pro">Industrial Visit</span>
                                    </a>
                                </li>
                                <li>
                                    <a title="Job Post" href="JobPost.jsp">
                                        <span class="mini-sub-pro">Job Post</span>
                                    </a>
                                </li>
                                 <li>
                                    <a title="Notice Board" href="NoticeBoard_form.jsp">
                                        <span class="mini-sub-pro">Notice Board</span>
                                    </a>
                                </li>
                                
                                 <li>
                                    <a title="Notice Board" href="NoticeBoard.jsp">
                                        <span class="mini-sub-pro">Notice Board</span>
                                    </a>
                                </li>
                               
                            </ul>
                        </li>
                         <li>
                            <a class="has-arrow" href="all-professors.html" aria-expanded="false">
                                <span class="educate-icon educate-professor icon-wrap"></span>
                                <span class="mini-click-non">Applied History</span>
                            </a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li>
                                    <a title="All Professors" href="College_CampusApplied.jsp">
                                        <span class="mini-sub-pro">Campus Applied</span>
                                    </a>
                                </li>
                                <li>
                                    <a title="Add Professor" href="College_IndustrialApplied.jsp">
                                        <span class="mini-sub-pro">Industrial Applied</span>
                                    </a>
                                </li>
                                <!-- <li>
                                    <a title="Edit Professor" href="#">
                                        <span class="mini-sub-pro">Job Posting</span>
                                    </a>
                                </li> -->
                            </ul>
                        </li> 

					<%
                    }
					%>
					
					<%
					if(session.getAttribute("usertype").equals("Company")){
					%>
                        <!-- Company data starts -->
                        <li>
                            <a class="has-arrow" href="Company-profile.html">
								   <span class="educate-icon educate-home icon-wrap"></span>
								   <span class="mini-click-non">Company</span>
							</a>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="company_profile.jsp">
                                        <span class="mini-sub-pro">Company Profile</span>
                                    </a>
                                </li>
                            </ul>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="UpdateCompanyProfile.jsp">
                                        <span class="mini-sub-pro">Update Profile</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                       
                        <li>
                            <a class="has-arrow" href="all-professors.html" aria-expanded="false">
                                <span class="educate-icon educate-professor icon-wrap"></span>
                                <span class="mini-click-non">Posting</span>
                            </a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li>
                                    <a title="All Professors" href="IndustrialVisit1Form.jsp">
                                        <span class="mini-sub-pro">Industrial Visit</span>
                                    </a>
                                </li>
                                <li>
                                    <a title="Add Professor" href="CampusnewForm.jsp">
                                        <span class="mini-sub-pro">Campus</span>
                                    </a>
                                </li>
                                <li>
                                    <a title="Edit Professor" href="JobPostForm1.jsp">
                                        <span class="mini-sub-pro">Job Posting</span>
                                    </a>
                                </li>
                            </ul>
                        </li> 
                         <li>
                            <a class="has-arrow" href="all-professors.html" aria-expanded="false">
                                <span class="educate-icon educate-professor icon-wrap"></span>
                                <span class="mini-click-non">Applications</span>
                            </a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li>
                                    <a title="All Professors" href="IndustrialApplication.jsp">
                                        <span class="mini-sub-pro">Industrial Visit Applications</span>
                                    </a>
                                </li>
                                <li>
                                    <a title="Add Professor" href="CampusApplications.jsp">
                                        <span class="mini-sub-pro">Campus Applications</span>
                                    </a>
                                </li>
                                <li>
                                    <a title="Edit Professor" href="JobApplication.jsp">
                                        <span class="mini-sub-pro">Job Applications</span>
                                    </a>
                                </li>
                            </ul>
                        </li> 
                        <li>
                            <a class="has-arrow" href="all-professors.html" aria-expanded="false">
                                <span class="educate-icon educate-professor icon-wrap"></span>
                                <span class="mini-click-non">Posted List</span>
                            </a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li>
                                    <a title="All Professors" href="Comp_IndustrialPosted.jsp">
                                        <span class="mini-sub-pro">Industrial Visit Posted</span>
                                    </a>
                                </li>
                                <li>
                                    <a title="Add Professor" href="Comp_CampusPosted.jsp">
                                        <span class="mini-sub-pro">Campus Posted</span>
                                    </a>
                                </li>
                                <li>
                                    <a title="Edit Professor" href="Comp_JobPosted.jsp">
                                        <span class="mini-sub-pro">Job Posted</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    
                        <%} %>
                        <!-- Company data ends -->

                        <!-- Student data starts -->
                        
                        <%
                        
                        if(session.getAttribute("usertype").equals("Student")){
                        %>
                        <li >
                            <a class="has-arrow" href="#" aria-expanded="true">
                                <span   class="educate-icon educate-student icon-wrap"></span> 
                                <span class="mini-click-non">Students</span>
                            </a>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="My Profile" href="MyProfile.jsp">
                                        <span class="mini-sub-pro">My Profile </span>
                                    </a>
                                </li>
                                <li>
                                    <a title="Edit Profile" href="EditStudent.jsp">
                                        <span class="mini-sub-pro">Edit Profile</span>
                                    </a>
                                </li>
                                <li>
                                    <a title="View JObs" href="ViewJobs.jsp">
                                        <span class="mini-sub-pro">View Jobs</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <%
                          } 
                        %>
                        <!-- Student data ends  -->
                        
                         <li>
                            <a class="has-arrow" href="AboutUs_List.jsp">
								   <span class="educate-icon educate-home icon-wrap"></span>
								   <span class="mini-click-non">Settings</span>
							</a>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="AboutUs_List.jsp">
                                	   <span class="mini-sub-pro">AboutUs</span>
                                    </a>
                                </li>
                            </ul>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="Blog_List.jsp">
                                	   <span class="mini-sub-pro">Blogs</span>
                                    </a>
                                </li>
                            </ul>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="Services_List.jsp">
                                	   <span class="mini-sub-pro">Services</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                         <li>
                            <a class="has-arrow" href="ViewAllNotification.jsp" aria-expanded="false">
                                <span class="educate-icon educate-department icon-wrap"></span> 
                                <span class="mini-click-non">Notifications</span>
                            </a>
                        </li>
                        
                          <%
                        	if(session.getAttribute("usertype").equals("Admin")){
                          %>
                         <li>
                            <a class="has-arrow" href="AboutUs_List.jsp">
								   <span class="educate-icon educate-home icon-wrap"></span>
								   <span class="mini-click-non">User List</span>
							</a>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="AllColleges.jsp">
                                	   <span class="mini-sub-pro">Colleges</span>
                                    </a>
                                </li>
                            </ul>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="AllCompanyList.jsp">
                                	   <span class="mini-sub-pro">Companies</span>
                                    </a>
                                </li>
                            </ul>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="AllStudents_List.jsp">
                                	   <span class="mini-sub-pro">Students</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                            
                            
                            <li>
                            <a class="has-arrow" href="AboutUs_List.jsp">
								   <span class="educate-icon educate-home icon-wrap"></span>
								   <span class="mini-click-non">Registration</span>
							</a>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="CollegeRegistration_form.jsp">
                                	   <span class="mini-sub-pro">College Registration</span>
                                    </a>
                                </li>
                            </ul>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="CompanyRegistration_form.jsp">
                                	   <span class="mini-sub-pro">Company Registration</span>
                                    </a>
                                </li>
                            </ul>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="StudentRegistration_form.jsp">
                                	   <span class="mini-sub-pro">Student Registration</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        
                        <li>
                            <a class="has-arrow" href="AboutUs_List.jsp">
								   <span class="educate-icon educate-home icon-wrap"></span>
								   <span class="mini-click-non">Applications</span>
							</a>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="All_JobApplications.jsp">
                                	   <span class="mini-sub-pro">JobApplication</span>
                                    </a>
                                </li>
                            </ul> 
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="All_IndustrialApplications.jsp">
                                	   <span class="mini-sub-pro">IndustrialApplication</span>
                                    </a>
                                </li>
                            </ul> 
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="All_CampusApplications.jsp">
                                	   <span class="mini-sub-pro">CampusApplication</span>
                                    </a>
                                </li>
                            </ul>   
                        </li>
                         <li>
                            <a class="has-arrow" href="AboutUs_List.jsp">
								   <span class="educate-icon educate-home icon-wrap"></span>
								   <span class="mini-click-non">Postings</span>
							</a>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="All_JobPosting.jsp">
                                	   <span class="mini-sub-pro">JobPosting List</span>
                                    </a>
                                </li>
                            </ul> 
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="All_IndustrialVisitPosting.jsp">
                                	   <span class="mini-sub-pro">IndustrialVisitPosting List</span>
                                    </a>
                                </li>
                            </ul> 
                            <ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="All_CampusPosting.jsp">
                                	   <span class="mini-sub-pro">CampusPosting List</span>
                                    </a>
                                </li>
                            </ul>   
                        </li> 
                        
                        	<ul class="submenu-angle" aria-expanded="true">
                                <li>
                                    <a title="Dashboard v.1" href="Contact_List.jsp">
                                	   <span class="mini-sub-pro">ContactUs List</span>
                                    </a>
                                </li>
                            </ul>
                            
                             
                            <% } %>
                    </ul>

                </div>
                </nav>
            </div>
        </nav>
    </div>
    <!-- End Left menu area -->
    <!-- Start Welcome area -->
    <div class="all-content-wrapper">
        <!-- <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="logo-pro">
                        <a href="index.html"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                    </div>
                </div>
            </div>
        </div> -->
        <div class="header-advance-area">
            <div class="header-top-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="header-top-wraper">
                                <div class="row">
                                    <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                        <div class="menu-switcher-pro">
                                            <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
													<i class="educate-icon educate-nav"></i>
												</button>
                                        </div>
                                    </div>
                                    
                                        <div class="header-right-info">
                                            <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                                <li class="nav-item dropdown">
                                                    <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="educate-icon educate-message edu-chat-pro" aria-hidden="true"></i><span class="indicator-ms"></span></a>
                                                    <div role="menu" class="author-message-top dropdown-menu animated zoomIn">
                                                        <div class="message-single-top">
                                                            <h1>Message</h1>
                                                        </div>
                                                        <ul class="message-menu">
                                                            <li>
                                                                <a href="#">
                                                                    <div class="message-img">
                                                                        <img src="img/contact/1.jpg" alt="">
                                                                    </div>
                                                                    <div class="message-content">
                                                                        <span class="message-date">16 Sept</span>
                                                                        <h2>Advanda Cro</h2>
                                                                        <p>Please done this project as soon possible.</p>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <div class="message-img">
                                                                        <img src="img/contact/4.jpg" alt="">
                                                                    </div>
                                                                    <div class="message-content">
                                                                        <span class="message-date">16 Sept</span>
                                                                        <h2>Sulaiman din</h2>
                                                                        <p>Please done this project as soon possible.</p>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <div class="message-img">
                                                                        <img src="img/contact/3.jpg" alt="">
                                                                    </div>
                                                                    <div class="message-content">
                                                                        <span class="message-date">16 Sept</span>
                                                                        <h2>Victor Jara</h2>
                                                                        <p>Please done this project as soon possible.</p>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <div class="message-img">
                                                                        <img src="img/contact/2.jpg" alt="">
                                                                    </div>
                                                                    <div class="message-content">
                                                                        <span class="message-date">16 Sept</span>
                                                                        <h2>Victor Jara</h2>
                                                                        <p>Please done this project as soon possible.</p>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <div class="message-view">
                                                            <a href="#">View All Messages</a>
                                                        </div>
                                                    </div>
                                                </li>
                                              
         <%
        
         Integer uid1 = (Integer)session.getAttribute("id");
         
         %>                                       
         
         <!-- Notification starts  -->
         
         <li class="nav-item">
         		<a href="#" data-toggle="dropdown" role="button" aria-expanded="false" 
         					class="nav-link dropdown-toggle" >
         			<i class="educate-icon educate-bell" aria-hidden="true" onclick="unseen(<%=uid1%>)"></i>
         				<span id="countN" class="badge badge-notify" ></span>
         		</a>
                                              
                                                    
        <div role="menu" class="notification-author dropdown-menu animated zoomIn"  >
             <div class="notification-single-top" >
                  <h1>Notifications</h1>
             </div>
                  
                  
                  
            <%
          		Integer uid = (Integer)session.getAttribute("id");  
          		
          		if(session.getAttribute("usertype").equals("Company")){
          			
          			List<Notification_Bean> list = Notification_Dao.notificationComp(uid);
          				for(Notification_Bean bean: list){
          				
          					count1 = bean.getNotification_id();
          	%>
               
                <ul class="notification-menu" >
                   <li>
                     <a href="#">
                         <div class="notification-content" >
                              <span class="notification-date"><%=bean.getCreated() %></span>
                                   <h2><%=bean.getTitle() %></h2>
                                   <p><%=bean.getMassege() %></p>
                         </div>
                     </a>   
                   </li>                                                       
            	</ul>
            	
            <%
          		}
    			}
    			//}
    			else if(session.getAttribute("usertype").equals("Student")){
					
    			List<Notification_Bean> list = Notification_Dao.notificationStd(uid);
          			for(Notification_Bean bean: list){

          				count1 = bean.getNotification_id();
          				
          				
            %>      
            	<ul class="notification-menu" >
                   <li>
                     <a href="#">
                         <div class="notification-content" >
                              <span class="notification-date"><%=bean.getCreated() %></span>
                                   <h2><%=bean.getTitle() %></h2>
                                   <p><%=bean.getMassege() %></p>
                         </div>
                     </a>   
                   </li>                                                       
            	</ul>            
            <%
    			}
    			}
    			else if(session.getAttribute("usertype").equals("College")){
    				
        		List<Notification_Bean> list = Notification_Dao.notificationCLG(uid);
              		for(Notification_Bean bean: list){

          				count1 = bean.getNotification_id();
          				System.out.println("Total Count IS :"+count1);
            %>    
            
            	<ul class="notification-menu" >
                   <li>
                     <a href="#">
                         <div class="notification-content" >
                                    <h2><%=bean.getTitle() %></h2>
                                   <p><%=bean.getMassege() %></p>
                                   <span class="notification-date"><%=bean.getCreated()%></span>
                             
                         </div>
                        
                     </a>   
                   </li> 
                                                                         
            	</ul> 
            
            
            <%
              	}
    			}
    			else{ 			
            %>
            
            	<ul class="notification-menu" >
                   <li>
                     <a href="#">
                         <div class="notification-content" >
                              <span class="notification-date">DATE</span>
                                   <h2>Notification title</h2>
                                   <p>Notification Message</p>
                         </div>
                     </a>   
                   </li>                                                       
            	</ul>  
            
            <%
    			}
            %>
            
                
                <div class="notification-view">
                     <a href="ViewAllNotification.jsp?id=<%=uid1%>">View All Notification</a>
                </div>
              </div>
            </li>
            
            
            <!-- Notification ends  -->
            
                                                <li class="nav-item">
                                                    <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
															<%
															if(session.getAttribute("image") == null){
															%>
															<img src="img/default.jpg"  />
															<%
															}else{
															%>
															<img src="<%=request.getContextPath() %><%=session.getAttribute("image") %>"  />
															<%
															}
															%>
															<span class="admin-name"><%=session.getAttribute("name") %></span>
															<i class="fa fa-angle-down edu-icon edu-down-arrow"></i>
														
														</a>
                                                    <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                        <li><a href="#"><span class="edu-icon edu-home-admin author-log-ic"></span>My Account</a>
                                                        </li>
                                                        <li><a href="CollegeProfile.jsp"><span class="edu-icon edu-user-rounded author-log-ic"></span>My Profile</a>
                                                        </li>
                                                        <li><a href="#"><span class="edu-icon edu-money author-log-ic"></span>User Billing</a>
                                                        </li>
                                                        <li><a href="#"><span class="edu-icon edu-settings author-log-ic"></span>Settings</a>
                                                        </li>
                                                        <li><a href="Logout.jsp"><span class="edu-icon edu-locked author-log-ic"></span>Log Out</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                
                                            </ul>
                                        </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Mobile Menu start -->
            
            <!-- Mobile Menu end -->
            <div class="breadcome-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcome-list single-page-breadcome">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="breadcome-heading">
                                            <form role="search" class="sr-input-func">
                                                <input type="text" placeholder="Search..." class="search-int form-control">
                                                <a href="#"><i class="fa fa-search"></i></a>
                                            </form>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
        <!-- Single pro tab review Start-->
            </div>
       
    	<% } %>

		<div >
		
		
		
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
    <!-- morrisjs JS
		============================================ -->
    <script src="js/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/sparkline/jquery.charts-sparkline.js"></script>
    <!-- calendar JS
		============================================ -->
    <script src="js/calendar/moment.min.js"></script>
    <script src="js/calendar/fullcalendar.min.js"></script>
    <script src="js/calendar/fullcalendar-active.js"></script>
    <!-- tab JS
		============================================ -->
    <script src="js/tab.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="js/main.js"></script>
    <!-- tawk chat JS
		============================================ -->
   <!--  <script src="js/tawk-chat.js"></script> -->
  <script src="js/signup1.js" type="text/javascript"></script>
   
   
   <script type="text/javascript">
   function unseen(uid1)
   {	 var url="Notification.jsp";
   		var data={uid1:uid1};
	   $.post(url,data,function(responce){
		  // alert(responce);
		   $("#countN").html(0);
	   });
   }
   </script>
   
   <%
   
   	System.out.println("Count at bottom is :"+count1);
   %>
   
   <script type="text/javascript">
   		<%-- function getCountN(){
   			
   			var c = <%=count1%>;
   			$("#countN").val(c);
   			
   			alert("Count : "+c);
   			
   			return c;
   		} --%>
   
   		$(document).ready(function(){
   			var c = <%=count1%>;
   			$("#countN").html(c);
   			//alert("Count :"+c);
   			
   		});
   		
   </script>
   
   
</body>

</html>