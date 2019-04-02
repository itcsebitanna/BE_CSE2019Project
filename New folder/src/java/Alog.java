



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
 * Servlet implementation class Alog
 */
@WebServlet("/Alog")
public class Alog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Alog() {
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
Connection con=null;
		
		String a=request.getParameter("u1");
		String b=request.getParameter("u2");
		System.out.println("im here@ Adminlog Servlet");
		System.out.println(a);
		System.out.println(b);
		 PrintWriter out = response.getWriter();
	    try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
			Statement st;
			st = con.createStatement();
			 String sql="select * from admin";
				ResultSet rs = st.executeQuery(sql);
				if(rs.next())
				{
					String q=rs.getString(1);
			        String w=rs.getString(2);
					String e=rs.getString(3);
					if(a.equals(q)&&b.equals(w)||a.equals(e)&&b.equals(w))
					{
						request.getSession(true).setAttribute("myobj", a);
						out.println("<script type=\"text/javascript\">"); 			
						out.println("alert(\"Login Successful\")");

						out.println("</script>"); 
						RequestDispatcher rd=request.getRequestDispatcher("admin1.jsp");
						rd.include(request, response);
					}
					
					else
					{
						out.println("<script type=\"text/javascript\">"); 			
						out.println("alert(\" Incorrect Login\")");

						out.println("</script>"); 
						RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
						rd.include(request, response);
					}
				}
				
				
				
		}
	    catch (ClassNotFoundException e1) 
		{
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	    catch (SQLException e1) 
	    {
	    	out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\" Pls Enter Valid Details\")");

			out.println("</script>"); 
			RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
			rd.include(request, response);
		}
		
		
		
	}

}
