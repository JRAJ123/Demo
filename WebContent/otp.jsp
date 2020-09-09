<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OTP</title>
 <style>
        input[type=number]
        {
            
     margin-left: 520px;
     width: 20%;
     padding:15px;
     text-align: center;
     border-radius: 15px;
     border-style: ridge;
        }
        input[type=submit]{
     margin-left: 540px;
     width: 20%;
     padding:15px;
     text-align: center;
     border-radius: 15px;
     border-style: ridge;
     background-color: #00ff00;
        }
        p {
  text-align: center;
  font-size: 15px;
  margin-top: 0px;
}
    </style>
</head>
<body>
<form action="otpbckend.jsp" method="post">
    <h2 style="text-align: center;">Enter The Otp</h2><br>
    <input type="number" name="otp" placeholder="OTP" ><br><br>
    <p id="demo"></p>
    <script>
        var countDownDate = new Date();
        countDownDate.setMinutes(countDownDate.getMinutes()+2);
        var x = setInterval(function() {
          var now = new Date().getTime();
          var distance = countDownDate - now;
          var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
          var seconds = Math.floor((distance % (1000 * 60)) / 1000);
          document.getElementById("demo").innerHTML = "OTP expires in  "+minutes + "m " + seconds + "s ";
          if (distance < 0) {
            clearInterval(x);
            document.getElementById("demo").innerHTML = "EXPIRED";
          }
        }, 1000);
        </script>
        
    <input type="submit" value="submit" >
    </form>
</body>
</html>
<%
String status=request.getParameter("status");
if(status !=null)
{
	if(status.equals("otpmismatch"))
	{
		out.print("<h3 style='color:red; text-align:center'>otp does not match</h3>");
	}
}
%>


