<html>
    <head>
        <title>Registration form</title>
       
    </head>
    <body>
    <%
    String status=request.getParameter("status");
    if(status !=null)
    {
    	if(status.equals("pwdmismatch"))
    	{
    		out.print("<h3 style='color:red; text-align:center'>passwords does not match</h3>");
    	}
    	if(status.equals("emailexist"))
    	{
    		out.print("<h3 style='color:red; text-align:center'>email id already exist please login</h3>");
    	}
    	
    }
    
    %>
 
         <div style="position: absolute; left: 30%;">
        <h1 style="text-align: center;font-style:italic;">SignUp</h1>
            <style>
body {
  background-image: url('');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>
        <!--  <fieldset  style="background-color:beige; "> -->
         
         
        <!--   <br> -->
            <form action="registerbckend.jsp" method="post">
            
             <br>
             <label for="fname">FIRST NAME:</label>
             <input style="margin-left:89px" type="text" id="fname" name="fname"  required><br><br>
             <label for="lname">LAST NAME:</label>
             <input style="margin-left:90px" type="text" id="lname" name="lname"  required><br>
             <br>
            <label for="email">ENTER EMAIL ADDRESS:</label>
         <input type="email" id="email" name="email" required><br>
            <br> <label for="pswd">ENTER NEW PASSWORD:</label>
             <input type="password" id="pswd" name="pwd" required><br>
             <br> <label for="cpswd">CONFIRM PASSWORD:</label>
             <input style="margin-left:19px" type="password" id="cpswd" name="cpwd" required><br>
            <br> 
           
             <input type="submit"  name="submit" value="submit" style="margin-left: 40%;color:blue;">
         
            </form>
           
<p> Do you have an account ? <a href = "login.jsp">LogIn</a></p>
 
       <!--  </fieldset> -->
    </div>
    </body>
</html>
