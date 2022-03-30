

import java.io.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class Login extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();	
		String un=request.getParameter("uname");
		String pas=request.getParameter("pwd");
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");  
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager"); 
			PreparedStatement msd=con.prepareStatement("select * from registration where username=? and password=? ");
			msd.setString(1,un);
			msd.setString(2,pas);
			ResultSet rs=msd.executeQuery();
			if(rs!=null) {
				response.sendRedirect("www.google.com");
			}
			else {
				pw.print("incorrect password");
			}
		}
			catch(Exception e) {
			System.out.print(e);	
			}
			
			}

	
}
