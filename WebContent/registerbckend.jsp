<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<%@ page import ="java.sql.*" %>
<%!Connection con ; %>
    <%
   
    response.setContentType("text/html");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String email = request.getParameter("email");    
    String pwd = request.getParameter("pwd");
    String cpwd=request.getParameter("cpwd");
    String addid="add100";
    

    Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","DEEPTHI","oracle");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select email from ecom where email='" + email +"'");
    if (rs.next()) {
    	con.close();
    	response.sendRedirect("registration.jsp?status=emailexist");
    }
    else{
    	//response.sendRedirect("registerbckend1.jsp");
    	
    	if(pwd !=null)
{
if(!(pwd.equals(cpwd)))
{
	response.sendRedirect("registration.jsp?status=pwdmismatch");
}
 else{

Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","DEEPTHI","oracle");
PreparedStatement pstmt = con.prepareStatement("insert into ecom values(?,?,?,?,?)"); 
pstmt.setString(1, fname);
pstmt.setString(2,lname);
pstmt.setString(3, email);
pstmt.setString(4, pwd);
pstmt.setString(5, addid);
session.setAttribute("email", email);
session.setAttribute("fname", fname);
int r = pstmt.executeUpdate();
if(r>0)
{
	response.sendRedirect("emailotp.jsp");
}


 }

 }
   }
    
      
    
    %>