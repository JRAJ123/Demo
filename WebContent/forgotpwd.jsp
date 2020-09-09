<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password?</title>
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
 <div style="position: absolute; left: 40%;" >
        <h1 style="text-align: center;">Forgot Password?</h1>
      <!--   <fieldset  style="background-color:blanchedalmond; height: 200; width: 300;"> <br> -->
        <form action="pwdemail.jsp" method="post">
        <label>Email:</label>
        <input type="email" name="email" placeholder="Enter valid email"><br><br>
        <input type="submit" style="margin-left:50px;" value="Send"><br>

</form>
<!-- </fieldset> -->
</div>
</div>
</body>
</html>