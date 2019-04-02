

import java.io.File;
import java.io.IOException;
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

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PiePlot3D;
import org.jfree.data.general.DefaultPieDataset;

/**
 * Servlet implementation class Yyyy
 */
@WebServlet("/Yyyy")
public class Yyyy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Yyyy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
			  
		
			   System.out.println("statement done");
			   String sql="select * from overall where pdt='"+u+"' ";
				ResultSet rs=st.executeQuery(sql);
				System.out.println("query done ");
				int a=1;
				int b=1;;
				
			  DefaultPieDataset dataset = new DefaultPieDataset( );             
			  dataset.setValue("Positive", rs.getInt(2));
				dataset.setValue("Negative",rs.getInt(3));           
			

			  JFreeChart chart = ChartFactory.createPieChart3D( 
			     "Products Analysis" ,  // chart title                   
			     dataset ,         // data 
			     true ,            // include legend                   
			     true, 
			     false);

			  final PiePlot3D plot = ( PiePlot3D ) chart.getPlot( );             
			  plot.setStartAngle( 270 );             
			  plot.setForegroundAlpha( 0.60f );             
			  plot.setInteriorGap( 0.02 );             
			  int width = 640; /* Width of the image */             
			  int height = 480; /* Height of the image */                             
			  File pieChart3D = new File( "D:\\workspace\\DynamicSentiment\\WebContent\\graph\\"+u+".jpeg" );  
//			  "O:\\workplace\\OpinionMining\\WebContent\\uploads\\"
			  ChartUtilities.saveChartAsJPEG( pieChart3D , chart , width , height );
			  request.getSession(true).setAttribute("c1", u);
				RequestDispatcher rd=request.getRequestDispatcher("disp.jsp");
				rd.include(request, response);
			 
		} catch (ClassNotFoundException e) {
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
