<%@ page import ="java.sql.*" %>
    <%
   
    response.setContentType("text/html");
    String email = request.getParameter("email");    
    String pwd = request.getParameter("pwd");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","DEEPTHI","oracle");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select email from ecom where email='" + email + "' and pwd='" + pwd + "'");
    if (rs.next()) {
    	
		//Get the encoded URL string
         session.setAttribute("email", email);
        response.sendRedirect("landing.jsp"); 
    } else {
        
        response.sendRedirect("login.jsp?status=false");
        		
        
             }
    %>