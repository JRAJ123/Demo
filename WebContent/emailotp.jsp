<%@ page import='covid2020.emailer' %>

<%@ page import="java.util.Random"%>

<%!
 
public int generateRandomNumber(int start, int end ){
    Random random = new Random();
    long  fraction = (long) ((end - start + 1 ) * random.nextDouble());
    return ((int)(fraction + start));
}
int num=generateRandomNumber(1000,9999);
%>
<%
session.setAttribute("randomotp", num);
String email=(String)session.getAttribute("email");
String message ="Otp for Registering into covid19 details do not share otp with others"+num +" " ;
emailer.sendEmail(email, message);

response.sendRedirect("otp.jsp");

%>