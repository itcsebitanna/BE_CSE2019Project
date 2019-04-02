import java.awt.BorderLayout;
import java.awt.Color;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.swing.JPanel;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.jdbc.JDBCCategoryDataset;


public class Ed {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
			
			String rw="iMac";
			  final String SQL = "SELECT pos, neg FROM overall ";
			  System.out.println("lets see the chart");
		
			     final CategoryDataset dataset = new JDBCCategoryDataset(con, SQL);
			     JFreeChart chart = ChartFactory.createBarChart("Report","X-Axis","Y-Axis", dataset, PlotOrientation.VERTICAL, false, false, false);
			    CategoryPlot catplot = chart.getCategoryPlot();
			    catplot.setRangeGridlinePaint(Color.BLACK);
			    ChartPanel chartpanel = new ChartPanel(chart);
			    JPanel jPanel1=new JPanel();
			    jPanel1.removeAll();
			    jPanel1.add(chartpanel, BorderLayout.CENTER);
			    jPanel1.validate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  

	}

}
