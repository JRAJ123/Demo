<%@ page import ="java.sql.*" %>

<%
String district=request.getParameter("district");
%>





<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Records</title>
<style type="text/css">
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
table {
width:100%;
  border-spacing: 5px;
}
th, td {
  padding: 15px;
}

</style>
</head>
<body>
<h3 style="text-align:center">Covid2020 Quarantine Records of District:<%=district %></h3>
</body>
</html>
<%

response.setContentType("text/html");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","DEEPTHI","oracle");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from quar where district='"+ district +"' ");
out.print("<table  <tr><th>Patient Name</th><th >Number of days in Quarantine</th></tr><tr>");
while(rs.next())
{
	out.print("<tr><td>"+rs.getString("pname")+"</td><td>"+rs.getString("period")+"</td></tr>"  );
}
out.print("</table>");
%>