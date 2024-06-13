function validate(){
	
	
			var name = $("#name").val();//number & character validation
      var email = $("#email").val();//alert(email);
      var user_type =$("#user_type").val();/*alert(user_type);*/
      var parent_type1 =$("#parent_type1").val();
      var parent_type2 =$("#parent_type2").val();
      var parent_type3 =$("#parent_type3").val();
      var password = $("#password").val();
      var conform_password = $("#conform_password").val();
      var mobile =$("#mobile_no").val();
      
			
			var business_name = $("#business_name").val();//number & character validation
			
		      var country = $("#country").val();
		      var state = $("#state").val();
		      var city = $("#city").val();
		      var taluka = $("#taluka").val();
		      var designation = $("#designation").val();
		      var description = $("#description").val();
		      var applied_for = $("#applied_for").val();
		      var current_loc = $("#current_loc").val();
		      var address = $("#address").val();
			

 			var mobile_pattern = /^[0-9]{10}$/;

			   var filter = /^[a-z0-9._-]+@[a-z]+.[a-z]{2,5}$/i;

			   if(name.trim() == "" )
                    {
                                    
                      $("#ename").fadeIn().html("Required").css("color", "red");
                      $("#name").css("border-color", "red");
                      setTimeout(function(){$("#ename").fadeOut();$("#name").css("border-color", "#ccc");},3000);
                      $("#name").focus();
                      return false;     
                    }
         else if(email.trim()=="")
            {
                $("#eemail").addClass('error');
                $("#eemail").fadeIn().html("Email Required");
                setTimeout(function(){ $("#eemail").removeClass('error'); $("#eemail").html("&nbsp;");},8000)
                $("#email").focus();
                return false;       
            }
         else if(!filter.test(email))
            {
                $("#eemail").addClass('error');
                $("#eemail").fadeIn().html("Invalid Email");
                setTimeout(function(){ $("#eemail").removeClass('error'); $("#eemail").html("&nbsp;");},8000)
                $("#email").focus();
                return false;       
            }
          else if(password.trim()=="")
                    {
                                    
                      $("#epassword ").fadeIn().html("Required").css("color", "red");
                      $("#password ").css("border-color", "red");
                      setTimeout(function(){$("#epassword ").fadeOut();$("#password ").css("border-color", "#ccc");},3000);
                      $("#password ").focus();
                      return false;     
                    }
          else if(conform_password.trim()=="")
                    {
                                    
                      $("#econform_password").fadeIn().html("Required").css("color", "red");
                      $("#conform_password").css("border-color", "red");
                      setTimeout(function(){$("#econform_password").fadeOut();$("#conform_password").css("border-color", "#ccc");},3000);
                      $("#conform_password").focus();
                      return false;     
                    }

          else if(password!=conform_password)
                    {
                      $("#econform_password").fadeIn().html("Password and conform password should be same").css("color", "red");
                      $("#conform_password").css("border-color", "red");
                      setTimeout(function(){$("#econform_password").fadeOut();$("#conform_password").css("border-color", "#ccc");},3000);
                      $("#conform_password").focus();
                      return false; 
                    }
            
          else if(mobile.trim() == "" )
            {
                 
                 $("#emobile").fadeIn().html("Required").css("color", "red");
                      $("#mobile_no").css("border-color", "red");
                      setTimeout(function(){$("#emobile").fadeOut();$("#mobile_no").css("border-color", "#ccc");},3000);
                      $("#mobile_no").focus();
                      return false;


      
            }
          else if(!mobile_pattern.test(mobile))
                 {
                    $("#emobile").fadeIn().html("Invalid").css("color", "red");
                      $("#mobile_no").css("border-color", "red");
                      setTimeout(function(){$("#emobile").fadeOut();$("#mobile_no").css("border-color", "#ccc");},3000);
                      $("#mobile_no").focus();
                      return false;    
                 }
        else if(user_type=="") 
                  {
                               
                   $("#euser_id").fadeIn().html("Required");
                   setTimeout(function(){ $("#euser_id").fadeOut(); }, 3000);
                  $("#user_type").focus();
                  return false; 
                 }
           else if(parent_type1=="") 
                  {
                               
                   $("#esuper_distribution").fadeIn().html("Required");
                   setTimeout(function(){ $("#esuper_distribution").fadeOut(); }, 3000);
                  $("#parent_type1").focus();
                  return false; 
                 }
         else if(parent_type2=="") 
                  {
                               
                   $("#edistribution").fadeIn().html("Required");
                   setTimeout(function(){ $("#edistribution").fadeOut(); }, 3000);
                  $("#parent_type2").focus();
                  return false; 
                 }
          else if(parent_type3=="") 
                  {
                               
                   $("#eretailer").fadeIn().html("Required");
                   setTimeout(function(){ $("#eretailer").fadeOut(); }, 3000);
                  $("#parent_type3").focus();
                  return false; 
                 }
          
		       if(business_name.trim()=="")
                    {
                                    
                      $("#ebusiness_name").fadeIn().html("Required").css("color", "red");
                      $("#business_name").css("border-color", "red");
                      setTimeout(function(){$("#ebusiness_name").fadeOut();$("#business_name").css("border-color", "#ccc");},3000);
                      $("#business_name").focus();
                      return false;     
                    }
		       
     else  if(country.trim() == "" )
          {
                          
            $("#ecountry").fadeIn().html("Required").css("color", "red");
            $("#country").css("border-color", "red");
            setTimeout(function(){$("#ecountry").fadeOut();$("#country").css("border-color", "#ccc");},3000);
            $("#country").focus();
            return false;     
          }
     else  if(state.trim() == "" )
     {
                     
       $("#estate").fadeIn().html("Required").css("color", "red");
       $("#state").css("border-color", "red");
       setTimeout(function(){$("#estate").fadeOut();$("#state").css("border-color", "#ccc");},3000);
       $("#state").focus();
       return false;     
     }
     else if(city.trim()=="")
     {
                     
       $("#ecity").fadeIn().html("Required").css("color", "red");
       $("#city").css("border-color", "red");
       setTimeout(function(){$("#ecity").fadeOut();$("#city").css("border-color", "#ccc");},3000);
       $("#city").focus();
       return false;     
     }
     else  if(taluka.trim() == "" )
     {
                     
       $("#etaluka").fadeIn().html("Required").css("color", "red");
       $("#taluka").css("border-color", "red");
       setTimeout(function(){$("#etaluka").fadeOut();$("#taluka").css("border-color", "#ccc");},3000);
       $("#taluka").focus();
       return false;     
     }
		       
     else if(designation.trim() == ""){
    	 $("#edesignation").fadeIn().html("Required").css("color", "red");
         $("#designation").css("border-color", "red");
         setTimeout(function(){$("#edesignation").fadeOut();$("#designation").css("border-color", "#ccc");},3000);
         $("#designation").focus();
         return false;
     }
		       
     else if(description.trim() == ""){
    	 $("#edescription").fadeIn().html("Required").css("color", "red");
         $("#description").css("border-color", "red");
         setTimeout(function(){$("#edescription").fadeOut();$("#description").css("border-color", "#ccc");},3000);
         $("#description").focus();
         return false;
     }	 
		       
     else if(applied_for.trim() == ""){
    	 $("#eapplied_for").fadeIn().html("Required").css("color", "red");
         $("#applied_for").css("border-color", "red");
         setTimeout(function(){$("#eapplied_for").fadeOut();$("#applied_for").css("border-color", "#ccc");},3000);
         $("#applied_for").focus();
         return false;
     }	   
		       
     else if(current_loc.trim() == ""){
    	 $("#ecurrent_loc").fadeIn().html("Required").css("color", "red");
         $("#current_loc").css("border-color", "red");
         setTimeout(function(){$("#ecurrent_loc").fadeOut();$("#current_loc").css("border-color", "#ccc");},3000);
         $("#current_loc").focus();
         return false;
     }	
		       
     else if(title.trim() == ""){
    	 $("#etitle").fadeIn().html("Required").css("color", "red");
         $("#title").css("border-color", "red");
         setTimeout(function(){$("#etitle").fadeOut();$("#title").css("border-color", "#ccc");},3000);
         $("#title").focus();
         return false;
     }	
		       
     else if(address.trim() == ""){
    	 $("#eaddress").fadeIn().html("Required").css("color", "red");
         $("#address").css("border-color", "red");
         setTimeout(function(){$("#eaddress").fadeOut();$("#address").css("border-color", "#ccc");},3000);
         $("#address").focus();
         return false;
     }	
                    
		}

		 //only character validation
$('#name').keypress(function (e) {
    var regex = new RegExp("^[a-zA-Z]+$");
    var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
    if (regex.test(str)) {
        return true;
    }
   
});

                   function only_number(event)
                {
                  var x = event.which || event.keyCode;
                  console.log(x);
                  if((x >= 48 ) && (x <= 57 ) || x == 8 | x == 9 || x == 13 )
                  {
                    return;
                  }else{
                    event.preventDefault();
                  }    
                }
