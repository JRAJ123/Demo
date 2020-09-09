<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import='covid2020.myprofile' %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <% 
String userName=(String)session.getAttribute("email");
String[] data= myprofile.getUser(userName);
%>
</head>

<body style="background:url('');background-repeat:no-repeat;background-size: cover;">
	
	<h1><a style="text-decoration:none;color:#54112D " href="landing.jsp">Covid2020</a></h1>
	
	
<% 
if(data!=null ){	
%>
<div class="content-panel">
   <h2 style='text-align:center' class="title" >My Profile</h2>
   <form  action ='./update' method="post">
   
       <h3 class="fieldset-title">Personal Info</h3>
        
      <div class="form-group" >
       <label class="col-md-2 col-sm-3 col-xs-12 control-label">First Name</label>
        <div class="col-md-5 col-sm-9 col-xs-12" >
         <input type="text" name="firstname" class="form-control" value="<%= data[0] %>">
        </div>
        </div>
        
      
      <div class="form-group">
      <label class="col-md-2 col-sm-3 col-xs-12 control-label">Last Name</label>
      <div class="col-md-5 col-sm-9 col-xs-12">
       <input type="text" name="lastname" class="form-control" value="<%= data[1] %>">
        </div>
         </div>
       <hr>
       
         <input type="hidden" name="email" value="<%= data[2] %>">
        
        <h3 class="fieldset-title">Contact Info</h3>
         <div class="form-group">
         <label class="col-md-2  col-sm-3 col-xs-12 control-label">Email</label>
         <div class="col-md-5 col-sm-9 col-xs-12">
         <input type="email" name="email" class="form-control" value="<%= data[2] %>" disabled>
         
         </div>
         </div>
      
     <%} %>
       <hr>
      <div class="form-group">
       <div class="col-md-5 col-sm-9 col-xs-12 col-md-push-2 col-sm-push-3 col-xs-push-0">
        <input class="btn btn-primary" type="submit" value="Update Profile">
       </div>
      </div>
    </form>
    
   </div>
     
      <div class="form-group">
       <div class="col-md-5 col-sm-9 col-xs-12 col-md-push-2 col-sm-push-3 col-xs-push-0">
        <input class="btn btn-primary" type="submit">
       </div>
      </div>
    
    
      
</body>
</html>