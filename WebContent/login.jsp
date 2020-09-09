<html>
<head>

<title>Login Form</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<% 
String email=(String)session.getAttribute("email");
if(email !=null)
{
	response.sendRedirect("landing.jsp");
}
String status=request.getParameter("status");
if(status!=null){
if(status.equals("false"))
{
	out.print("<h3 style='color:red; text-align:center'>Invalid User Name or Password</h3>");
}
if(status.equals("success"))
{
	out.print("<h3 style='color:green; text-align:center'>Registration successfull please login</h3>");
}

if(status.equals("rstsuccess"))
{
	out.print("<h3 style='color:green; text-align:center'>Password reset successfull please login</h3>");
}
if(status.equals("expired"))
{
	out.print("<h3 style='color:red; text-align:center'>session expired</h3>");
}
}
%>  

<form class="box" action="loginbckend.jsp" method="post">
<h1>Login</h1>
<input type="text" name="email" placeholder="Email">
<input type="password" name="pwd" placeholder="password">
<input type="submit"  value="Login">
 <a href=forgotpwd.jsp>ForgotPassword?</a>
 <a href=registration.jsp style="margin-left:100px">SignUp</a>
       
</form>
</body>
</html>