import java.io.*; 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.jfree.chart.ChartFactory; 
import org.jfree.chart.JFreeChart; 
import org.jfree.chart.plot.PiePlot3D; 
import org.jfree.data.general.DefaultPieDataset; 
import org.jfree.chart.ChartUtilities;

public class yyy 
{
   public static void main(String[] args )
   {
	   try {
		   Connection con=null;
		   Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
			Statement st;
			st = con.createStatement();
		   String s="hp";
		   System.out.println(s);
		  
		System.out.println("fuck off");
		   System.out.println("statement done");
		   String sql="select * from overall where pdt='"+s+"' ";
			ResultSet rs=st.executeQuery(sql);
			System.out.println("query done ");
			int a=1;
			int b=1;;
			if(rs.next())
			{
				a=rs.getInt(2);
				b=rs.getInt(3);
			}
		  DefaultPieDataset dataset = new DefaultPieDataset( );             
		  dataset.setValue("Positive", (rs.getInt(2)));
			dataset.setValue("Negative", (rs.getInt(2)));           
		

		  JFreeChart chart = ChartFactory.createPieChart3D( 
		     "Mobile Sales" ,  // chart title                   
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
	  File pieChart3D = new File( "D:\\pie_Chart3D.jpeg" );                      
		  ChartUtilities.saveChartAsJPEG( pieChart3D , chart , width , height );
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
}