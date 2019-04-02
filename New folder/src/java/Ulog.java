

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
 * Servlet implementation class Ulog
 */
@WebServlet("/Ulog")
public class Ulog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ulog() {
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
		
		String a=request.getParameter("z1");
		String b=request.getParameter("z2");
		String c=request.getParameter("z3");
		String d=request.getParameter("z4");
		String e=request.getParameter("z5");
		String f=request.getParameter("z6");
		String g=request.getParameter("z7");
		String h=request.getParameter("z8");
		String ma="@.com";
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
		System.out.println(d);
		System.out.println(e);
		System.out.println(f);
		System.out.println(g);
		 PrintWriter out = response.getWriter();
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
			Statement st;
			Statement st1;
			
			st = con.createStatement();
			st1=con.createStatement();
			
			if(c.equals(d))
			{
			 String sql= "INSERT INTO users (name,mail,pwd,cpwd,mob,gen,dob,shipping) VALUES ('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"')";
				int rs = st.executeUpdate(sql);
				out.println("<script type=\"text/javascript\">"); 			
				out.println("alert(\"Registration Successful\")");

				out.println("</script>"); 
				RequestDispatcher sri=request.getRequestDispatcher("index.html");
				sri.include(request, response);
//				String sql1=("ALTER TABLE pics ADD "+a+" varchar(25)");
//				int rs1=st1.executeUpdate(sql1);
				request.getSession(true).setAttribute("myobj", a);
				//RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				//rd.include(request, response);
			}
			else
			{
				out.println("<script type=\"text/javascript\">"); 			
				out.println("alert(\"Password and conform password did  not match\")");

				out.println("</script>"); 
				RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
				rd.include(request, response);
			}
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

}
