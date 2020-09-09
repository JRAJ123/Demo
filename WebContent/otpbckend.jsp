<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<%@ page import='covid2020.emailer' %>
<%
String otp1=request.getParameter("otp");
int otp=(int)session.getAttribute("randomotp");
int ot=Integer.parseInt(otp1);

if(otp==ot)
{
String email=(String)session.getAttribute("email");
String fname=(String)session.getAttribute("fname");
String message ="welcome to covid2020 updates Mr/Mrs "+" "+" "+fname+"" ;
emailer.sendEmail(email, message);
response.sendRedirect("landing.jsp");
}
else
{
	response.sendRedirect("otp.jsp?status=otpmismatch");
}
%>