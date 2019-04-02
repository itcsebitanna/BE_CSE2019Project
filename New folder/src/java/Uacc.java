

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Uacc
 */
@WebServlet("/Uacc")
public class Uacc extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Uacc() {
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
		HttpSession session=request.getSession(); 
		
				
				String a=request.getParameter("u1");
				String b=request.getParameter("u2");
			
				System.out.println(a);
				System.out.println(b);
				PrintWriter out=response.getWriter();
				
				try {
					Class.forName("com.mysql.jdbc.Driver");
					con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
					Statement st;
					st = con.createStatement();
					 String sql= " select * from users WHERE  mail='"+a+"'|| name='"+a+"' && pwd='"+b+"' ";
						ResultSet rs = st.executeQuery(sql);
						
						if(rs.next())
						{
							String o=rs.getString(1);
					    String m=rs.getString(2);
						String n=rs.getString(3);
							if(a.equals(o)||a.equals(m) &&b.equals(n))
							{
								System.out.println("working");
								System.out.println("umane---->"+o);
								System.out.println("mail id---->"+m);
								request.getSession(true).setAttribute("username", o);
								request.getSession(true).setAttribute("mail", m);
								RequestDispatcher rd=request.getRequestDispatcher("upro.jsp");
								rd.include(request, response);
							}
							
						}
						else
						{
							out.println("<script type=\"text/javascript\">"); 			
							out.println("alert(\" Incorrect Login\")");

							out.println("</script>"); 
							RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
							rd.include(request, response);
							
						}

						
				} catch (ClassNotFoundException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (SQLException e1) {
					out.println("<script type=\"text/javascript\">"); 			
					out.println("alert(\" Incorrect Login\")");

					out.println("</script>"); 
					RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
					rd.include(request, response);
				}
				
				
				
			}

		}

