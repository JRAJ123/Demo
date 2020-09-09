<%@ page import ="java.sql.*" %>
<%
String name=request.getParameter("patientname");
String district=request.getParameter("district");
String confirm=request.getParameter("confirm");
String confirm1=request.getParameter("quar");
System.out.print(confirm);
System.out.print(district);
System.out.print(name);
if(confirm!=null||confirm1!=null){
if(confirm.equals("yes"))
{
	System.out.print("Iam in active");
	response.setContentType("text/html");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","DEEPTHI","oracle");
	Statement st = con.createStatement();
	ResultSet rs;
	rs = st.executeQuery("select * from active where district='"+ district +"' ");
	rs.next();
	String cases=rs.getString("cases");
	int count=Integer.parseInt(cases);
	count=count+1;
	String cases1=Integer.toString(count);
	ResultSet rs1;
	rs1=st.executeQuery("update active set cases="+cases1+" where district='"+ district +"' ");
        rs1.next();
        response.sendRedirect("landing.jsp");

	

}
else 
{
	System.out.print("Iam in quar");
	response.setContentType("text/html");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","DEEPTHI","oracle");
	PreparedStatement pstmt = con.prepareStatement("insert into quar values(?,?,?)");
	pstmt.setString(1, district);
	pstmt.setString(2, name);
	pstmt.setString(3, confirm1);
	int r = pstmt.executeUpdate();
	if(r>0)
	{
		response.sendRedirect("landing.jsp");
	}
	
	
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