package covid2020;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class myprofile  {
	
	public static String[]  getUser(String userName) throws SQLException, ClassNotFoundException {
		String[] data = new String[3];
		String fname=null;
		String lname=null;
		
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","SYSTEM","oracle");
			PreparedStatement pst = con.prepareStatement("select * from ecom where email=?");
			pst.setString(1, userName);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
			
			fname = rs.getString("FNAME");
			lname = rs.getString("LNAME");
			
			
			}
			System.out.println(fname);
			data[0]=fname;
			data[1]=lname;
			
			data[2]=userName;
			rs.close();
			con.close();
			pst.close();
		
		return data;
		
	}
	
}