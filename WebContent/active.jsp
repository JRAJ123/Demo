<%@ page import ="java.sql.*" %>
<%!
int actives=0;
int actives1=0;

%>
<%
actives1=0;
response.setContentType("text/html");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","DEEPTHI","oracle");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from active ");
while(rs.next())
{
	String active=rs.getString("cases");
	 actives=Integer.parseInt(active);
	actives1+=actives;
	
	
}
con.close();
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style=" text-align:center;">Total number of active Cases in Telangana:</h1>
<% 
out.print("<h2 style='color:green;text-align:center '>"+actives1+"</h2>");
%>
<h1></h1>
</body>
</html>