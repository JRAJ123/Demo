<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reset Password</title>
</head>
<body>
<div>
         <style>
body {
  background-image: url('');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>

<%
String status=request.getParameter("status");
if(status !=null){
if(status.equals("notmatch")){
out.print("<h3 style='color:red; text-align:center'>password does not match re-enter password</h3>");
}
}
%>
 <div style="position: absolute; left: 40%;" >
        <h1 style="text-align: center;">Reset Password</h1>
       <!--  <fieldset  style="background-color:blanchedalmond; height: 200; width: 300;"> <br> -->
        <form action="resetpwdbckend.jsp" method="post">
        <label>Enter New Password:</label>
        <input type="password" name="pwd" style="margin-left:20px"><br><br>
        <label>Confirm New Password:</label>
        <input type="password" name="cpwd" required><br><br>
        <input type="submit" value="Submit" style="margin-left:130px"><br>
        <a href=login.jsp>Back to Login</a>
        </form>
        <!-- </fieldset> -->
        </div>
        </div>
</body>
</html>