<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.company.bean.Blog_Bean" %>
<%@ page import="com.company.dao.Blog_Dao" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	
	<%
	int desc = 0;


%>

<!--[if IE 6]>
<html id="ie6" lang="en-US">
<![endif]-->
<!--[if IE 7]>
<html id="ie7" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html id="ie8" lang="en-US">
<![endif]-->
<!--[if !(IE 6) | !(IE 7) | !(IE 8)  ]><!-->
<html lang="en-US">
<!--<![endif]-->

<!-- Mirrored from www.elegantthemes.com/layouts/art-design/digital-marketing-blog-page/live-demo by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 08 Nov 2019 09:56:11 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="pingback" href="https://www.elegantthemes.com/layouts/xmlrpc.php" />
<!--[if lt IE 9]>
	<script src="https://www.elegantthemes.com/layouts/wp-content/themes/Divi/js/html5.js" type="text/javascript"></script>
	<![endif]-->
<script type="text/javascript">
		document.documentElement.className = 'js';
	</script>
<script>var et_site_url='https://www.elegantthemes.com/layouts';var et_post_id='213041';function et_core_page_resource_fallback(a,b){"undefined"===typeof b&&(b=a.sheet.cssRules&&0===a.sheet.cssRules.length);b&&(a.onerror=null,a.onload=null,a.href?a.href=et_site_url+"/?et_core_page_resource="+a.id+et_post_id:a.src&&(a.src=et_site_url+"/?et_core_page_resource="+a.id+et_post_id))}
</script><title>Digital Marketing Blog | Elegant Themes</title>

<meta name="robots" content="noindex,follow" />
<meta property="og:locale" content="en_US" />
<meta property="og:type" content="article" />
<meta property="og:title" content="Digital Marketing Blog | Elegant Themes" />
<meta property="og:url" content="https://www.elegantthemes.com/layouts/art-design/digital-marketing-blog-page/live-demo" />
<meta property="og:site_name" content="Elegant Themes" />
<meta property="article:publisher" content="https://www.facebook.com/elegantthemes" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:title" content="Digital Marketing Blog | Elegant Themes" />
<meta name="twitter:site" content="@elegantthemes" />
<meta name="twitter:creator" content="@elegantthemes" />
<script type='application/ld+json' class='yoast-schema-graph yoast-schema-graph--main'>{"@context":"https://schema.org","@graph":[{"@type":"WebSite","@id":"https://www.elegantthemes.com/layouts/#website","url":"https://www.elegantthemes.com/layouts/","name":"Elegant Themes","potentialAction":{"@type":"SearchAction","target":"https://www.elegantthemes.com/layouts/?s={search_term_string}","query-input":"required name=search_term_string"}},{"@type":"WebPage","@id":"https://www.elegantthemes.com/layouts/art-design/digital-marketing-blog-page/live-demo#webpage","url":"https://www.elegantthemes.com/layouts/art-design/digital-marketing-blog-page/live-demo","inLanguage":"en-US","name":"Digital Marketing Blog | Elegant Themes","isPartOf":{"@id":"https://www.elegantthemes.com/layouts/#website"},"datePublished":"2018-05-31T04:55:25+00:00","dateModified":"2018-05-31T05:15:42+00:00"}]}</script>

<link rel='dns-prefetch' href='http://fonts.googleapis.com/' />
<link rel="alternate" type="application/rss+xml" title="Elegant Themes &raquo; Feed" href="https://www.elegantthemes.com/layouts/feed" />
<link rel="alternate" type="application/rss+xml" title="Elegant Themes &raquo; Comments Feed" href="https://www.elegantthemes.com/layouts/comments/feed" />
<meta content="Divi v.3.29.3" name="generator" /><link rel='stylesheet' id='wp-block-library-css' href='../../wp-includes/css/dist/block-library/style.min4d2c.css?ver=5.2.4' type='text/css' media='all' />
<link rel='stylesheet' id='wc-block-style-css' href='../../wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/style747d.css?ver=2.4.5' type='text/css' media='all' />
<link rel='stylesheet' id='woocommerce-layout-css' href='../../wp-content/plugins/woocommerce/assets/css/woocommerce-layout9e95.css?ver=3.8.0' type='text/css' media='all' />
<link rel='stylesheet' id='woocommerce-smallscreen-css' href='../../wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen9e95.css?ver=3.8.0' type='text/css' media='only screen and (max-width: 768px)' />
<link rel='stylesheet' id='woocommerce-general-css' href='../../wp-content/plugins/woocommerce/assets/css/woocommerce9e95.css?ver=3.8.0' type='text/css' media='all' />
<style id='woocommerce-inline-inline-css' type='text/css'>
.woocommerce form .form-row .required { visibility: visible; }
</style>
<link rel='stylesheet' id='divi-fonts-css' href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&amp;subset=latin,latin-ext' type='text/css' media='all' />
<link rel='stylesheet' id='divi-style-css' href='../../wp-content/themes/Divi/style18e6.css?ver=3.29.3' type='text/css' media='all' />
<link rel='stylesheet' id='et-builder-googlefonts-cached-css' href='https://fonts.googleapis.com/css?family=Poppins%3A100%2C100italic%2C200%2C200italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C600%2C600italic%2C700%2C700italic%2C800%2C800italic%2C900%2C900italic%7CRoboto%3A100%2C100italic%2C300%2C300italic%2Cregular%2Citalic%2C500%2C500italic%2C700%2C700italic%2C900%2C900italic&amp;ver=5.2.4#038;subset=latin,latin-ext' type='text/css' media='all' />
<link rel='stylesheet' id='dashicons-css' href='../../wp-includes/css/dashicons.min4d2c.css?ver=5.2.4' type='text/css' media='all' />
<script type='text/javascript' src='../../wp-includes/js/jquery/jquery4a5f.js?ver=1.12.4-wp'></script>
<script type='text/javascript' src='../../wp-includes/js/jquery/jquery-migrate.min330a.js?ver=1.4.1'></script>
<link rel='https://api.w.org/' href='https://www.elegantthemes.com/layouts/wp-json/' />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://www.elegantthemes.com/layouts/xmlrpc.php?rsd" />
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="https://www.elegantthemes.com/layouts/wp-includes/wlwmanifest.xml" />
<meta name="generator" content="WordPress 5.2.4" />
<meta name="generator" content="WooCommerce 3.8.0" />
<link rel='shortlink' href='https://www.elegantthemes.com/layouts/?p=213041' />
<link rel="alternate" type="application/json+oembed" href="https://www.elegantthemes.com/layouts/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.elegantthemes.com%2Flayouts%2Fart-design%2Fdigital-marketing-blog-page%2Flive-demo" />
<link rel="alternate" type="text/xml+oembed" href="https://www.elegantthemes.com/layouts/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fwww.elegantthemes.com%2Flayouts%2Fart-design%2Fdigital-marketing-blog-page%2Flive-demo&amp;format=xml" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" /> <noscript><style>.woocommerce-product-gallery{ opacity: 1 !important; }</style></noscript>
<link rel="icon" href="../../wp-content/uploads/2017/12/logo.png" sizes="32x32" />
<link rel="icon" href="../../wp-content/uploads/2017/12/logo.png" sizes="192x192" />
<link rel="apple-touch-icon-precomposed" href="../../wp-content/uploads/2017/12/logo.png" />
<meta name="msapplication-TileImage" content="https://www.elegantthemes.com/layouts/wp-content/uploads/2017/12/logo.png" />
<link rel="stylesheet" id="et-core-unified-cached-inline-styles" href="../../wp-content/cache/et/213041/et-core-unified-15730742407299.min.css" onerror="et_core_page_resource_fallback(this, true)" onload="et_core_page_resource_fallback(this)" />




<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" 
      rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>



 <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!--
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 -->

  <style type="text/css">
body {
  font-family: "Open Sans", sans-serif;
}
h2 {
  color: #000;
  font-size: 26px;
  font-weight: 300;
  text-align: center;
  text-transform: uppercase;
  position: relative;
  margin: 30px 0 80px;
}
h2 b {
  color: #ffc000;
}
h2::after {
  content: "";
  width: 100px;
  position: absolute;
  margin: 0 auto;
  height: 4px;
  background: rgba(0, 0, 0, 0.2);
  left: 0;
  right: 0;
  bottom: -20px;
}
.carousel {
  margin: 50px auto;
  padding: 0 70px;
}
.carousel .item {
  min-height: 330px;
    text-align: center;
  overflow: hidden;
}
.carousel .item .img-box {
  height: 160px;
  width: 100%;
  position: relative;
}
.carousel .item img { 
  max-width: 100%;
  max-height: 100%;
  display: inline-block;
  position: absolute;
  bottom: 0;
  margin: 0 auto;
  left: 0;
  right: 0;
}
.carousel .item h4 {
  font-size: 18px;
  margin: 10px 0;
}
.carousel .item .btn {
  color: #333;
    border-radius: 0;
    font-size: 11px;
    text-transform: uppercase;
    font-weight: bold;
    background: none;
    border: 1px solid #ccc;
    padding: 5px 10px;
    margin-top: 5px;
    line-height: 16px;
}
.carousel .item .btn:hover, .carousel .item .btn:focus {
  color: #fff;
  background: #000;
  border-color: #000;
  box-shadow: none;
}
.carousel .item .btn i {
  font-size: 14px;
    font-weight: bold;
    margin-left: 5px;
}
.carousel .thumb-wrapper {
  text-align: center;
}
.carousel .thumb-content {
  padding: 15px;
}
.carousel .carousel-control {
  height: 100px;
    width: 40px;
    background: none;
    margin: auto 0;
    background: rgba(0, 0, 0, 0.2);
}
.carousel .carousel-control i {
    font-size: 30px;
    position: absolute;
    top: 50%;
    display: inline-block;
    margin: -16px 0 0 0;
    z-index: 5;
    left: 0;
    right: 0;
    color: rgba(0, 0, 0, 0.8);
    text-shadow: none;
    font-weight: bold;
}
.carousel .item-price {
  font-size: 13px;
  padding: 2px 0;
}
.carousel .item-price strike {
  color: #999;
  margin-right: 5px;
}
.carousel .item-price span {
  color: #86bd57;
  font-size: 110%;
}
.carousel .carousel-control.left i {
  margin-left: -3px;
}
.carousel .carousel-control.left i {
  margin-right: -3px;
}
.carousel .carousel-indicators {
  bottom: -50px;
}
.carousel-indicators li, .carousel-indicators li.active {
  width: 10px;
  height: 10px;
  margin: 4px;
  border-radius: 50%;
  border-color: transparent;
}
.carousel-indicators li { 
  background: rgba(0, 0, 0, 0.2);
}
.carousel-indicators li.active {  
  background: rgba(0, 0, 0, 0.6);
}
.star-rating li {
  padding: 0;
}
.star-rating i {
  font-size: 14px;
  color: #ffc000;
}
</style>


	


</head>


<body class="page-template-default page page-id-213041 theme-Divi woocommerce-no-js et_pb_button_helper_class et_fullwidth_nav et_fixed_nav et_show_nav et_cover_background et_pb_gutter windows et_pb_gutters3 et_primary_nav_dropdown_animation_fade et_secondary_nav_dropdown_animation_fade et_pb_footer_columns4 et_header_style_left et_pb_pagebuilder_layout et_no_sidebar et_divi_theme et-db et_minified_js et_minified_css">






<div id="page-container">

<header id="main-header" data-height-onload="66">
<div class="container clearfix et_menu_container">
<div class="title_container">
	<img src="../../wp-content/uploads/2018/05/LOGO.png" style="height: 130px;width: 236px;    
					margin-left: 73px;margin-top: 30px;margin-bottom: 22px">
<!-- <h1>
<a href="../../art-design/digital-marketing-blog-page" title="Divi Builder Layout Pack">
Digital Marketing Blog </a>
</h1> -->
<!-- </div> -->
<div id="et-top-navigation" data-height="66" data-fixed-height="40">

				<nav >
					<!-- <ul style="display: flex;font-size: 16px;font-family: 
					initial;padding-left: 0px;margin-top: -21px">
						<li style="padding-right: 20px; color: #2ea3f2;">Helpline no. 108</li>
						<li style="color: #2ea3f2;">Email: email@gmail.com</li>
					</ul> -->
		<ul class="et_pb_member_social_links et_pb_module et_pb_social_media_follow    et_pb_social_media_follow_0 clearfix et_pb_bg_layout_light et_pb_text_align_center" 
					style="display: flex;font-size: 16px;font-family: 
					initial;padding-left: 0px;margin-top: -21px">
		
			<li style="padding-right: 20px; color: #2ea3f2;">Helpline no. 108</li>
			<li style="color: #2ea3f2;">Email: email@gmail.com</li>
					

	
			<li class="et_pb_social_media_follow_network_0" style="padding-left: 108px;">
				<a href="#" class="et_pb_font_icon et_pb_facebook_icon"><span>Facebook</span></a>
			</li>
			<li class="et_pb_social_media_follow_network_1">
				<a href="#" class="et_pb_font_icon et_pb_twitter_icon"><span>Twitter</span></a>
			</li>
			<li class="et_pb_social_media_follow_network_2">
				<a href="#" class="et_pb_font_icon et_pb_google_icon"><span>Google+</span></a>
			</li>
			<li class="et_pb_social_media_follow_network_3">
				<a href="#" class="et_pb_font_icon et_pb_linkedin_icon"><span>LinkedIn</span></a>
			</li>
		</ul>
				</nav>

<nav id="top-menu-nav" style=" margin-top: 80px;">
<ul id="top-menu" class="nav">

<li id="menu-item-213056" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-213056"><a href="../../art-design/digital-marketing-home-page/home.jsp">Home</a>
</li>

<li id="menu-item-213054" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-213054"><a href="../../art-design/digital-marketing-about-page/about_new.jsp">About</a>
</li>

<li id="menu-item-213046" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-213046"><a href="../../art-design/digital-marketing-services-page/services.jsp">Services</a>
</li>

<li id="menu-item-213050" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-213050"><a href="../../art-design/digital-marketing-careers-page/careers.jsp">Careers</a>
</li>

<li id="menu-item-213042" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-213041 current_page_item menu-item-213042"><a href="blog.jsp" aria-current="page">Blog</a>
</li>

<li id="menu-item-213044" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-213044"><a href="../../art-design/digital-marketing-contact-page/contact.jsp">Contact</a>
</li>

</ul> </nav>

<div id="et_mobile_nav_menu">
<div class="mobile_nav closed">
<span class="select_page">Select Page</span>
<span class="mobile_menu_bar mobile_menu_bar_toggle"></span>
</div>
</div> </div> 
</div> 
<div class="et_search_outer">
<div class="container et_search_form_container">
<form role="search" method="get" class="et-search-form" action="https://www.elegantthemes.com/layouts/">
<input type="search" class="et-search-field" placeholder="Search &hellip;" value="" name="s" title="Search for:" /> </form>
<span class="et_close_search_field"></span>
</div>
</div>
</header> 
<div id="et-main-area">
<div id="main-content">
<article id="post-213041" class="post-213041 page type-page status-publish hentry">
<div class="entry-content">
<div id="et-boc" class="et-boc">



<div class="et_builder_inner_content et_pb_gutters3">
<div class="et_pb_section et_pb_section_0 et_pb_section_parallax et_pb_with_background et_section_regular section_has_divider et_pb_bottom_divider">
<div class="et_parallax_bg_wrap"><div class="et_parallax_bg" style="background-image: url(../../wp-content/uploads/2018/05/marketing-bg6.png);"></div></div>
<div class="et_pb_row et_pb_row_0">
<div class="et_pb_column et_pb_column_4_4 et_pb_column_0  et_pb_css_mix_blend_mode_passthrough et-last-child">
<div class="et_pb_module et_pb_text et_pb_text_0 et_pb_bg_layout_dark  et_pb_text_align_center">
<div class="et_pb_text_inner"><h3>Job Openings</h3>
<h1>Want to Learn About Job Openings?</h1></div>
</div> 
</div> 
</div> <div class="et_pb_row et_pb_row_1">
<div class="et_pb_column et_pb_column_1_4 et_pb_column_1  et_pb_css_mix_blend_mode_passthrough et_pb_column_empty">
</div> <div class="et_pb_column et_pb_column_1_2 et_pb_column_2  et_pb_css_mix_blend_mode_passthrough">
<div class="et_pb_with_border et_pb_module et_pb_signup_0 et_hover_enabled et_pb_newsletter_layout_left_right et_pb_newsletter et_pb_subscribe clearfix et_pb_bg_layout_dark  et_pb_text_align_center et_pb_no_bg">
<div class="et_pb_newsletter_description">
</div>
<div class="et_pb_newsletter_form">
<form method="post">
<div class="et_pb_newsletter_result et_pb_newsletter_error"></div>
<div class="et_pb_newsletter_result et_pb_newsletter_success">
<h2>Success!</h2>
</div>
<div class="et_pb_newsletter_fields">
<p class="et_pb_newsletter_field et_pb_contact_field_last et_pb_contact_field_last_tablet et_pb_contact_field_last_phone">
<label class="et_pb_contact_form_label" for="et_pb_signup_email" style="display: none;">Email</label>
<input id="et_pb_signup_email" class="input" type="text" placeholder="Email" name="et_pb_signup_email">
</p>
<p class="et_pb_newsletter_button_wrap">
<a class="et_pb_newsletter_button et_pb_button" href="#" data-icon="">
<span class="et_subscribe_loader"></span>
<span class="et_pb_newsletter_button_text">Subscribe</span>
</a>
</p>
</div>
<input type="hidden" value="mailchimp" name="et_pb_signup_provider" />
<input type="hidden" value="42d4a98af1" name="et_pb_signup_list_id" />
<input type="hidden" value="SlavaET" name="et_pb_signup_account_name" />
<input type="hidden" value="true" name="et_pb_signup_ip_address" />
</form>
</div>
</div>
</div> 
<div class="et_pb_column et_pb_column_1_4 et_pb_column_3  et_pb_css_mix_blend_mode_passthrough et-last-child et_pb_column_empty">
</div> 
</div> 
<div class="et_pb_bottom_inside_divider et-no-transition"></div>
</div> 

	









	
	</div>


  <!-- List starts -->

    <div class="container"> <!--  et_pb_section -->
  <div class="row">
    <div class="col-md-12">
      <h2>Trending <b>Jobs</b></h2>
      <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="0">
      <!-- Carousel indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>   
      <!-- Wrapper for carousel items -->
      <div class="carousel-inner">
        <div class="item carousel-item active">
          <div class="row">
            <div class="col-sm-3">
              <div class="thumb-wrapper">
                <div class="img-box">
                  <img src="https://image.ibb.co/g0CAPp/ipad.jpg" class="img-responsive img-fluid" alt="">
                </div>
                <div class="thumb-content">
                  <h4>Company Name</h4>
                  <p class="item-price"><h5>Job Title</h5></p>
                  <!-- <div class="star-rating">
                    <ul class="list-inline">
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                     
                    </ul>
                  </div> -->
                  <div>
                      <p>Job Description</p>

                  </div>
                  <a href="#" class="btn btn-primary">View/Apply</a>
                </div>            
              </div>
            </div>
            <div class="col-sm-3">
              <div class="thumb-wrapper">
                <div class="img-box">
                  <img src="https://image.ibb.co/g0CAPp/ipad.jpg" class="img-responsive img-fluid" alt="">
                </div>
                <div class="thumb-content">
                  <h4>Sony Headphone</h4>
                  <p class="item-price"><strike>$25.00</strike> <span>$23.99</span></p>
                  <div class="star-rating">
                    <ul class="list-inline">
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                    </ul>
                  </div>
                  <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>            
              </div>
            </div>    
            <div class="col-sm-3">
              <div class="thumb-wrapper">
                <div class="img-box">
                  <img src="https://image.ibb.co/g0CAPp/ipad.jpg" class="img-responsive img-fluid" alt="">
                </div>
                <div class="thumb-content">
                  <h4>Macbook Air</h4>
                  <p class="item-price"><strike>$899.00</strike> <span>$649.00</span></p>
                  <div class="star-rating">
                    <ul class="list-inline">
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
                    </ul>
                  </div>
                  <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>            
              </div>
            </div>                
            <div class="col-sm-3">
              <div class="thumb-wrapper">
                <div class="img-box">
                  <img src="https://image.ibb.co/g0CAPp/ipad.jpg" class="img-responsive img-fluid" alt="">
                </div>
                <div class="thumb-content">
                  <h4>Nikon DSLR</h4>
                  <p class="item-price"><strike>$315.00</strike> <span>$250.00</span></p>
                  <div class="star-rating">
                    <ul class="list-inline">
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                    </ul>
                  </div>
                  <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>            
              </div>
            </div>
          </div>
        </div>
        <div class="item carousel-item">
          <div class="row">
            <div class="col-sm-3">
              <div class="thumb-wrapper">
                <div class="img-box">
                  <img src="https://image.ibb.co/g0CAPp/ipad.jpg" class="img-responsive img-fluid" alt="">
                </div>
                <div class="thumb-content">
                  <h4>Sony Play Station</h4>
                  <p class="item-price"><strike>$289.00</strike> <span>$269.00</span></p>
                  <div class="star-rating">
                    <ul class="list-inline">
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                    </ul>
                  </div>
                  <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>            
              </div>
            </div>
            <div class="col-sm-3">
              <div class="thumb-wrapper">
                <div class="img-box">
                  <img src="https://image.ibb.co/g0CAPp/ipad.jpg" class="img-responsive img-fluid" alt="">
                </div>
                <div class="thumb-content">
                  <h4>Macbook Pro</h4>
                  <p class="item-price"><strike>$1099.00</strike> <span>$869.00</span></p>
                  <div class="star-rating">
                    <ul class="list-inline">
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
                    </ul>
                  </div>
                  <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>            
              </div>
            </div>
            <div class="col-sm-3">
              <div class="thumb-wrapper">
                <div class="img-box">
                  <img src="https://image.ibb.co/g0CAPp/ipad.jpg" class="img-responsive img-fluid" alt="">
                </div>
                <div class="thumb-content">
                  <h4>Bose Speaker</h4>
                  <p class="item-price"><strike>$109.00</strike> <span>$99.00</span></p>
                  <div class="star-rating">
                    <ul class="list-inline">
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                    </ul>
                  </div>
                  <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>            
              </div>
            </div>
            <div class="col-sm-3">
              <div class="thumb-wrapper">
                <div class="img-box">
                  <img src="https://image.ibb.co/g0CAPp/ipad.jpg" class="img-responsive img-fluid" alt="">
                </div>
                <div class="thumb-content">
                  <h4>Samsung Galaxy S8</h4>
                  <p class="item-price"><strike>$599.00</strike> <span>$569.00</span></p>
                  <div class="star-rating">
                    <ul class="list-inline">
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                    </ul>
                  </div>
                  <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>            
              </div>
            </div>            
          </div>
        </div>
        <div class="item carousel-item">
          <div class="row">
            <div class="col-sm-3">
              <div class="thumb-wrapper">
                <div class="img-box">
                  <img src="https://image.ibb.co/g0CAPp/ipad.jpg" class="img-responsive img-fluid" alt="">
                </div>
                <div class="thumb-content">
                  <h4>Apple iPhone</h4>
                  <p class="item-price"><strike>$369.00</strike> <span>$349.00</span></p>
                  <div class="star-rating">
                    <ul class="list-inline">
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                    </ul>
                  </div>
                  <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>            
              </div>
            </div>
            <div class="col-sm-3">
              <div class="thumb-wrapper">
                <div class="img-box">
                  <img src="https://image.ibb.co/g0CAPp/ipad.jpg" class="img-responsive img-fluid" alt="">
                </div>
                <div class="thumb-content">
                  <h4>Canon DSLR</h4>
                  <p class="item-price"><strike>$315.00</strike> <span>$250.00</span></p>
                  <div class="star-rating">
                    <ul class="list-inline">
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                    </ul>
                  </div>
                  <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>            
              </div>
            </div>
            <div class="col-sm-3">
              <div class="thumb-wrapper">
                <div class="img-box">
                  <img src="https://image.ibb.co/g0CAPp/ipad.jpg" class="img-responsive img-fluid" alt="">
                </div>
                <div class="thumb-content">
                  <h4>Google Pixel</h4>
                  <p class="item-price"><strike>$450.00</strike> <span>$418.00</span></p>
                  <div class="star-rating">
                    <ul class="list-inline">
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                    </ul>
                  </div>
                  <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>            
              </div>
            </div>  
            <div class="col-sm-3">
              <div class="thumb-wrapper">
                <div class="img-box">
                  <img src="https://image.ibb.co/g0CAPp/ipad.jpg" class="img-responsive img-fluid" alt="">
                </div>
                <div class="thumb-content">
                  <h4>Apple Watch</h4>
                  <p class="item-price"><strike>$350.00</strike> <span>$330.00</span></p>
                  <div class="star-rating">
                    <ul class="list-inline">
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star"></i></li>
                      <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                    </ul>
                  </div>
                  <a href="#" class="btn btn-primary">Add to Cart</a>
                </div>            
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Carousel controls -->
      <a class="carousel-control left carousel-control-prev" href="#myCarousel" data-slide="prev">
        <i class="fa fa-angle-left"></i>
      </a>
      <a class="carousel-control right carousel-control-next" href="#myCarousel" data-slide="next">
        <i class="fa fa-angle-right"></i>
      </a>
    </div>
    </div>
  </div>
</div>


  <!-- List ends  -->



<div class="et_pb_section et_pb_section_2 et_pb_section_parallax et_pb_with_background et_section_regular section_has_divider et_pb_bottom_divider et_pb_top_divider">
<div class="et_pb_top_inside_divider et-no-transition"></div>
<div class="et_parallax_bg_wrap">
	<div class="et_parallax_bg" style="background-image: url(../../wp-content/uploads/2018/05/marketing-bg8.png);"></div>
</div>
<div class="et_pb_row et_pb_row_3 et_pb_row_fullwidth">
<div class="et_pb_column et_pb_column_4_4 et_pb_column_5  et_pb_css_mix_blend_mode_passthrough et-last-child">
<div class="et_pb_module et_pb_text et_pb_text_1 et_pb_bg_layout_dark  et_pb_text_align_center">
<div class="et_pb_text_inner"><h3>Let’s Get Started</h3>
<h2>Ready To Make a Real Change? Let&#8217;s Build this Thing Together!</h2></div>
</div> <div class="et_pb_button_module_wrapper et_pb_button_0_wrapper et_pb_button_alignment_center et_pb_module ">
<a class="et_pb_button et_pb_button_0 et_hover_enabled et_pb_bg_layout_dark" href="#">Setup a Free Meeting</a>
</div>
</div> 
</div> <div class="et_pb_row et_pb_row_4">
<div class="et_pb_column et_pb_column_4_4 et_pb_column_6  et_pb_css_mix_blend_mode_passthrough et-last-child">
<ul class="et_pb_module et_pb_social_media_follow et_pb_social_media_follow_0 clearfix et_pb_bg_layout_light  et_pb_text_align_center">
<li class='et_pb_social_media_follow_network_0 et_pb_social_icon et_pb_social_network_link  et-social-facebook et_pb_social_media_follow_network_0'><a href='#' class='icon et_pb_with_border' title='Follow on Facebook' target="_blank"><span class='et_pb_social_media_follow_network_name' aria-hidden='true'>Follow</span></a></li><li class='et_pb_social_media_follow_network_1 et_pb_social_icon et_pb_social_network_link  et-social-twitter et_pb_social_media_follow_network_1'><a href='#' class='icon et_pb_with_border' title='Follow on Twitter' target="_blank"><span class='et_pb_social_media_follow_network_name' aria-hidden='true'>Follow</span></a></li><li class='et_pb_social_media_follow_network_2 et_pb_social_icon et_pb_social_network_link  et-social-linkedin et_pb_social_media_follow_network_2'><a href='#' class='icon et_pb_with_border' title='Follow on LinkedIn' target="_blank"><span class='et_pb_social_media_follow_network_name' aria-hidden='true'>Follow</span></a></li><li class='et_pb_social_media_follow_network_3 et_pb_social_icon et_pb_social_network_link  et-social-instagram et_pb_social_media_follow_network_3'><a href='#' class='icon et_pb_with_border' title='Follow on Instagram' target="_blank"><span class='et_pb_social_media_follow_network_name' aria-hidden='true'>Follow</span></a></li><li class='et_pb_social_media_follow_network_4 et_pb_social_icon et_pb_social_network_link  et-social-dribbble et_pb_social_media_follow_network_4'><a href='#' class='icon et_pb_with_border' title='Follow on dribbble' target="_blank"><span class='et_pb_social_media_follow_network_name' aria-hidden='true'>Follow</span></a></li><li class='et_pb_social_media_follow_network_5 et_pb_social_icon et_pb_social_network_link  et-social-youtube et_pb_social_media_follow_network_5'><a href='#' class='icon et_pb_with_border' title='Follow on Youtube' target="_blank"><span class='et_pb_social_media_follow_network_name' aria-hidden='true'>Follow</span></a></li>
</ul> 
</div> 
</div> 
</div>  </div>
</div> </div> 
</article> 
</div> 
<footer id="main-footer">
<div id="footer-bottom">
<div class="container clearfix">
	<p id="footer-info">Designed by <a href="#" title="Themes">Cyberathon</a></p> 
</div> 
</div>
</footer> 
</div> 
</div> 
<script type="text/javascript">
			</script>
<script type="text/javascript">
		var c = document.body.className;
		c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
		document.body.className = c;
	</script>
<link rel='stylesheet' id='mediaelement-css' href='../../wp-includes/js/mediaelement/mediaelementplayer-legacy.min45a0.css?ver=4.2.6-78496d1' type='text/css' media='all' />
<link rel='stylesheet' id='wp-mediaelement-css' href='../../wp-includes/js/mediaelement/wp-mediaelement.min4d2c.css?ver=5.2.4' type='text/css' media='all' />
<script type='text/javascript' src='../../wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min44fd.js?ver=2.70'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_add_to_cart_params = {"ajax_url":"\/layouts\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/layouts\/?wc-ajax=%%endpoint%%","i18n_view_cart":"View cart","cart_url":"https:\/\/www.elegantthemes.com\/layouts","is_cart":"","cart_redirect_after_add":"no"};
/* ]]> */
</script>
<script type='text/javascript' src='../../wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min9e95.js?ver=3.8.0'></script>
<script type='text/javascript' src='../../wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min6b25.js?ver=2.1.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var woocommerce_params = {"ajax_url":"\/layouts\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/layouts\/?wc-ajax=%%endpoint%%"};
/* ]]> */
</script>
<script type='text/javascript' src='../../wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min9e95.js?ver=3.8.0'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var wc_cart_fragments_params = {"ajax_url":"\/layouts\/wp-admin\/admin-ajax.php","wc_ajax_url":"\/layouts\/?wc-ajax=%%endpoint%%","cart_hash_key":"wc_cart_hash_97021550e9eab2d14fdb9c3ac6541ec6","fragment_name":"wc_fragments_97021550e9eab2d14fdb9c3ac6541ec6","request_timeout":"5000"};
/* ]]> */
</script>
<script type='text/javascript' src='../../wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min9e95.js?ver=3.8.0'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var DIVI = {"item_count":"%d Item","items_count":"%d Items"};
var et_shortcodes_strings = {"previous":"Previous","next":"Next"};
var et_pb_custom = {"ajaxurl":"https:\/\/www.elegantthemes.com\/layouts\/wp-admin\/admin-ajax.php","images_uri":"https:\/\/www.elegantthemes.com\/layouts\/wp-content\/themes\/Divi\/images","builder_images_uri":"https:\/\/www.elegantthemes.com\/layouts\/wp-content\/themes\/Divi\/includes\/builder\/images","et_frontend_nonce":"be8240f00c","subscription_failed":"Please, check the fields below to make sure you entered the correct information.","et_ab_log_nonce":"bbe6d304ac","fill_message":"Please, fill in the following fields:","contact_error_message":"Please, fix the following errors:","invalid":"Invalid email","captcha":"Captcha","prev":"Prev","previous":"Previous","next":"Next","wrong_captcha":"You entered the wrong number in captcha.","ignore_waypoints":"no","is_divi_theme_used":"1","widget_search_selector":".widget_search","is_ab_testing_active":"","page_id":"213041","unique_test_id":"","ab_bounce_rate":"5","is_cache_plugin_active":"yes","is_shortcode_tracking":"","tinymce_uri":""};
var et_pb_box_shadow_elements = [];
/* ]]> */
</script>
<script type='text/javascript' src='../../wp-content/themes/Divi/js/custom.min18e6.js?ver=3.29.3'></script>
<script type='text/javascript' src='../../wp-content/themes/Divi/core/admin/js/common18e6.js?ver=3.29.3'></script>
<script type='text/javascript' src='../../wp-includes/js/wp-embed.min4d2c.js?ver=5.2.4'></script>
<script type='text/javascript'>
var mejsL10n = {"language":"en","strings":{"mejs.install-flash":"You are using a browser that does not have Flash player enabled or installed. Please turn on your Flash player plugin or download the latest version from https:\/\/get.adobe.com\/flashplayer\/","mejs.fullscreen-off":"Turn off Fullscreen","mejs.fullscreen-on":"Go Fullscreen","mejs.download-video":"Download Video","mejs.fullscreen":"Fullscreen","mejs.time-jump-forward":["Jump forward 1 second","Jump forward %1 seconds"],"mejs.loop":"Toggle Loop","mejs.play":"Play","mejs.pause":"Pause","mejs.close":"Close","mejs.time-slider":"Time Slider","mejs.time-help-text":"Use Left\/Right Arrow keys to advance one second, Up\/Down arrows to advance ten seconds.","mejs.time-skip-back":["Skip back 1 second","Skip back %1 seconds"],"mejs.captions-subtitles":"Captions\/Subtitles","mejs.captions-chapters":"Chapters","mejs.none":"None","mejs.mute-toggle":"Mute Toggle","mejs.volume-help-text":"Use Up\/Down Arrow keys to increase or decrease volume.","mejs.unmute":"Unmute","mejs.mute":"Mute","mejs.volume-slider":"Volume Slider","mejs.video-player":"Video Player","mejs.audio-player":"Audio Player","mejs.ad-skip":"Skip ad","mejs.ad-skip-info":["Skip in 1 second","Skip in %1 seconds"],"mejs.source-chooser":"Source Chooser","mejs.stop":"Stop","mejs.speed-rate":"Speed Rate","mejs.live-broadcast":"Live Broadcast","mejs.afrikaans":"Afrikaans","mejs.albanian":"Albanian","mejs.arabic":"Arabic","mejs.belarusian":"Belarusian","mejs.bulgarian":"Bulgarian","mejs.catalan":"Catalan","mejs.chinese":"Chinese","mejs.chinese-simplified":"Chinese (Simplified)","mejs.chinese-traditional":"Chinese (Traditional)","mejs.croatian":"Croatian","mejs.czech":"Czech","mejs.danish":"Danish","mejs.dutch":"Dutch","mejs.english":"English","mejs.estonian":"Estonian","mejs.filipino":"Filipino","mejs.finnish":"Finnish","mejs.french":"French","mejs.galician":"Galician","mejs.german":"German","mejs.greek":"Greek","mejs.haitian-creole":"Haitian Creole","mejs.hebrew":"Hebrew","mejs.hindi":"Hindi","mejs.hungarian":"Hungarian","mejs.icelandic":"Icelandic","mejs.indonesian":"Indonesian","mejs.irish":"Irish","mejs.italian":"Italian","mejs.japanese":"Japanese","mejs.korean":"Korean","mejs.latvian":"Latvian","mejs.lithuanian":"Lithuanian","mejs.macedonian":"Macedonian","mejs.malay":"Malay","mejs.maltese":"Maltese","mejs.norwegian":"Norwegian","mejs.persian":"Persian","mejs.polish":"Polish","mejs.portuguese":"Portuguese","mejs.romanian":"Romanian","mejs.russian":"Russian","mejs.serbian":"Serbian","mejs.slovak":"Slovak","mejs.slovenian":"Slovenian","mejs.spanish":"Spanish","mejs.swahili":"Swahili","mejs.swedish":"Swedish","mejs.tagalog":"Tagalog","mejs.thai":"Thai","mejs.turkish":"Turkish","mejs.ukrainian":"Ukrainian","mejs.vietnamese":"Vietnamese","mejs.welsh":"Welsh","mejs.yiddish":"Yiddish"}};
</script>
<script type='text/javascript' src='../../wp-includes/js/mediaelement/mediaelement-and-player.min45a0.js?ver=4.2.6-78496d1'></script>
<script type='text/javascript' src='../../wp-includes/js/mediaelement/mediaelement-migrate.min4d2c.js?ver=5.2.4'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var _wpmejsSettings = {"pluginPath":"\/layouts\/wp-includes\/js\/mediaelement\/","classPrefix":"mejs-","stretching":"responsive"};
/* ]]> */
</script>
<script type='text/javascript' src='../../wp-includes/js/mediaelement/wp-mediaelement.min4d2c.js?ver=5.2.4'></script>




</body>

<!-- Mirrored from www.elegantthemes.com/layouts/art-design/digital-marketing-blog-page/live-demo by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 08 Nov 2019 09:56:22 GMT -->
</html>


