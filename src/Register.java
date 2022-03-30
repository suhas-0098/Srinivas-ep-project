
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Register extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				PrintWriter out=response.getWriter();
				response.setContentType("text/html");
				String n=request.getParameter("name");
				String e=request.getParameter("email");
				String un=request.getParameter("uname");
				String pas=request.getParameter("pwd");
				out.print(n);
				try{
					Class.forName("oracle.jdbc.driver.OracleDriver");  
					Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager"); 
					PreparedStatement msd=con.prepareStatement("insert into registration values(?,?,?,?)");
					msd.setString(1,n);
					msd.setString(2,e);
					msd.setString(3,un);
					msd.setString(4,pas);
					msd.executeUpdate();
					}
					catch(Exception ex){
						System.out.print(ex);
					}
				
			}

		}



