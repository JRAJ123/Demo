<%@ page import ="java.sql.*" %>
<%
String name=request.getParameter("patientname");
String district=request.getParameter("district");
String confirm=request.getParameter("death");
String confirm1=request.getParameter("cured");
if(confirm!=null){
if(confirm.equals("yes"))
{
	confirm="death";
	System.out.print("Iam in death");
	response.setContentType("text/html");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","DEEPTHI","oracle");
	Statement st = con.createStatement();
	ResultSet rs;
	rs = st.executeQuery("select * from active where district='"+district+"' ");
	rs.next();
	String cases=rs.getString("cases");
	int count=Integer.parseInt(cases);
	count=count-1;
	String cases1=Integer.toString(count);
	ResultSet rs1;
	rs1=st.executeQuery("update active set cases='"+cases1+"' where district='"+district+"' ");
	
	ResultSet rs2;
	rs2 = st.executeQuery("select * from active where district='"+district+"' ");
	rs2.next();
	String death=rs2.getString("deaths");
	int deaths=Integer.parseInt(death);
	deaths=deaths+1;
	String deaths1=Integer.toString(deaths);
	ResultSet rs3;
	rs3=st.executeQuery("update active set deaths='"+deaths1+"' where district='"+district+"' ");
	PreparedStatement pstmt = con.prepareStatement("insert into death values(?,?,?)");
	pstmt.setString(1, district);
	pstmt.setString(2, name);
	pstmt.setString(3, confirm);
	int r = pstmt.executeUpdate();
	if(r>0)
	{
		response.sendRedirect("landing.jsp");
	}
	
}
else if(confirm1.equals("yes"))
{
	confirm1="cured";
	
	response.setContentType("text/html");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","oracle");
	Statement st = con.createStatement();
	ResultSet rs;
	rs = st.executeQuery("select * from active where district='"+district+"' ");
	rs.next();
	String cases=rs.getString("cases");
	int count=Integer.parseInt(cases);
	count=count-1;
	String cases1=Integer.toString(count);
	ResultSet rs1;
	rs1=st.executeQuery("update active set cases='"+cases1+"' where district='"+district+"' ");
	
	PreparedStatement pstmt = con.prepareStatement("insert into discharge values(?,?,?)");
	pstmt.setString(1, district);
	pstmt.setString(2, name);
	pstmt.setString(3, confirm1);
	int r = pstmt.executeUpdate();
	if(r>0)
	{
		response.sendRedirect("landing.jsp");
	}
	
	
}
else
{
	out.print("something went wrong");
}

}
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

</body>
</html>