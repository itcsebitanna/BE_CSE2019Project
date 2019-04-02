

import java.io.File;
import java.io.IOException;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.awt.BasicStroke;
import java.awt.Color;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartRenderingInfo;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.entity.StandardEntityCollection;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.jdbc.JDBCPieDataset;

import java.io.OutputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection; 
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Xx
 */
@WebServlet("/xxxx")
public class xxxx extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xxxx() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		OutputStream out1 = response.getOutputStream();
		String u=request.getParameter("p1");
		System.out.println("the Product is---->"+u);
		
		 try {
			   Connection con=null;
			   Class.forName("com.mysql.jdbc.Driver");
				con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
				Statement st;
				st = con.createStatement();
			   String s="hp";
			   System.out.println(s);
			  String r="positive";
			  String r1="negative";
		
			   System.out.println("statement done");
			   String sql="select * from overall where pdt='"+u+"' ";
				ResultSet rs=st.executeQuery(sql);
				String a = null;
				int b = 0;
				int c = 0;
				if(rs.next())
				{
					a=rs.getString(1);
					b=rs.getInt(2);
					c=rs.getInt(3);
				}
 				DefaultCategoryDataset bar = new DefaultCategoryDataset();
 				bar.addValue(c,"Negative",a);
 				bar.addValue(b,"Possitive",a);
 				
 				JFreeChart BarChartObject=ChartFactory.createBarChart("Overall Product Calculation","Product Status","Graphical Status",bar,PlotOrientation.VERTICAL,true,true,false);
    			response.setContentType("image/png");
    			ChartUtilities.writeChartAsPNG(out1, BarChartObject, 700, 500);
				 
			  
							RequestDispatcher rd=request.getRequestDispatcher("disp.jsp");
							rd.include(request, response);
		 }
	 catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block 
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}   
   }

				
		
		
		
		
		
		
		
		
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
