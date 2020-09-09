package covid2020;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class updateprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname=request.getParameter("firstname");
		String lname=request.getParameter("lastname");
		String email=request.getParameter("email");
		
		
		PrintWriter out=response.getWriter();
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","DEEPTHI","oracle");
    	
    	PreparedStatement pst=con.prepareStatement("update ecom set FNAME=?,LNAME=? where EMAIL=?");
			
			pst.setString(1, fname);
			pst.setString(2, lname);
			
			pst.setString(3, email);
			int rs = pst.executeUpdate();
			System.out.println(rs);
			if(rs!=0)
			{
				con.commit();
				con.close();
				RequestDispatcher rd=	request.getRequestDispatcher("./MyProfile.jsp");
				response.setContentType("text/html");
				out.print("<h3  style='color:green;text-align:center'>Updated Successfully</h3>");
				rd.forward(request, response); 
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			RequestDispatcher rd=	request.getRequestDispatcher("./MyProfile.jsp");
			response.setContentType("text/html");
			out.print("<h3  style='color:red;text-align:center'>Something Went Wrong Please Try Again</h3>");
			rd.forward(request, response); 
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
