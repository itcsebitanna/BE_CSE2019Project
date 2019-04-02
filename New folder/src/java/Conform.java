

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Conform
 */
@WebServlet("/Conform")
public class Conform extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Conform() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 HttpSession session=request.getSession();
	        System.out.println("im n conform servlet");
		String c=request.getParameter("user");
		String v=request.getParameter("id");
		String b=request.getParameter("pdt");
		String n=request.getParameter("im");
		System.out.println(c);
		System.out.println(v);
		System.out.println(b);
		System.out.println(n);
		 PrintWriter out = response.getWriter();
		 
		try {
			Connection con=null;
String dumy=null;

			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
			Statement st;
			st = con.createStatement();
			String sql= "insert into booked(user,id,pdt,image,comments) values('"+c+"','"+v+"','"+b+"','"+n+"','"+dumy+"')";

			int rs = st.executeUpdate(sql);
			System.out.println("query executed");
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"We have received your order..your product will be shipped in 3 working days\")");

			PreparedStatement query=con.prepareStatement("select * from products where name='"+b+"' and image='"+n+"'  ");
			ResultSet so=query.executeQuery();
			int quat=0;
			if(so.next())
			{
				quat=so.getInt("quantity");
			} 
			quat-=1;			
			PreparedStatement up=con.prepareStatement("update products set quantity='"+quat+"' where name='"+b+"' and image='"+n+"'  ");
			up.executeUpdate(); 
			
			
			out.println("</script>"); 
			RequestDispatcher rd=request.getRequestDispatcher("upro.jsp");
			rd.include(request, response);		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 PrintWriter out = response.getWriter();
		 
	       
				

	}

}
