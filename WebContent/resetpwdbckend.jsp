<%@ page import ="java.sql.*" %>

<%
String email=(String)session.getAttribute("email");
String pwd=request.getParameter("pwd");
String cpwd=request.getParameter("cpwd");
if(email!=null)
{
if(!(pwd.equals(cpwd)))
{
	response.sendRedirect("resetpwd.jsp?status=notmatch");
}
else{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","DEEPTHI","oracle");
	PreparedStatement pstmt = con.prepareStatement("update ecom set pwd='"+pwd+"' where email='"+email+"'");
	int r=pstmt.executeUpdate();
		if(r>0)
	{
		session.invalidate();
		response.sendRedirect("login.jsp?status=rstsuccess");
	}
	}
}
else
{
	response.sendRedirect("login.jsp?status=expired");
}
%>