<%@ page import='covid2020.emailer' %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%
   String email=request.getParameter("email");
session.setAttribute("email", email);
       String message ="http://localhost:8000/covid2020/resetpwd.jsp";
      emailer.sendEmail(email, message);
     
	%>
		

<html>
   <head>
      <title>reset link</title>
   </head>
   
   <body>
      <p align = "center">
         <% 
            out.println( "<h3 style='color:green; text-align:center'>Reset link send Successfully</h3>");
         %>
      </p>
   </body>
</html>