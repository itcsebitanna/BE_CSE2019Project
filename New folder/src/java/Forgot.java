

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class Forgot
 */
@WebServlet("/Forgot")
public class Forgot extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forgot() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out=response.getWriter();
		String r=request.getParameter("u1");
		
		String r1=request.getParameter("u2");
		
		String r2=request.getParameter("u3");
		Connection con=null;
		
		
		if(r1.equals(r2))
		{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
			Statement st;
			st = con.createStatement();
			
			
			
			 String sql="select * from admin where mail='"+r+"'";
			 ResultSet rs=st.executeQuery(sql);
			 String q;
			 String w;
			 String e1=null;
			 if(rs.next())
			 {
				 q=rs.getString(1);
				 w=rs.getString(2);
				 e1=rs.getString(3);
			 
			 
			 String qwerty="update admin set pwd='"+r1+"' where mail='"+e1+"'";
				int e=st.executeUpdate(qwerty);
				
				out.println("<script type=\"text/javascript\">"); 			
				out.println("alert(\"Password Changed\")");

				out.println("</script>");

				
				RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
				rd.include(request, response);
			 }
			 else
			 {
				 out.println("<script type=\"text/javascript\">"); 			
					out.println("alert(\"Incorrect Admin ID\")");

					out.println("</script>"); 

					RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
					rd.include(request, response);
			 }
		}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"Password cant be changed\")");

			out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("forgot.jsp");
			rd.include(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		else
		{
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"Password and Conform password are not the same\")");

			out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("forgot.jsp");
			rd.include(request, response);
		}
		}
		
		}
	


