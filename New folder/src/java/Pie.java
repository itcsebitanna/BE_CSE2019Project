import java.awt.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import javax.swing.JPanel;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.jdbc.JDBCCategoryDataset;

/**
 * Servlet implementation class Pie
 */
@WebServlet("/Pie")
public class Pie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Pie() {
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
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
			
			String rw="iMac";
			  final String SQL = "SELECT pos, neg FROM overall where pdt='"+rw+"'";
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

	}}