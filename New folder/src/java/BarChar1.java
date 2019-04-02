import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jfree.chart.ChartFactory;
import org.jfree.data.category.DefaultCategoryDataset;

import javax.servlet.*;
import javax.servlet.http.*;

import java.io.*;
import java.sql.*;
import java.util.*;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;

import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.chart.ChartFactory; 
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.JFreeChart; 
import org.jfree.chart.ChartUtilities;
/**
 *
 * @author Sai Krishna
 */
@WebServlet("/BarChar1")
public class BarChar1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
     
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        response.setContentType("text/html");

 OutputStream out = response.getOutputStream(); 

 try{

String p=request.getParameter("p1");
System.out.println("parameter is---->"+p);
	 Class.forName("com.mysql.jdbc.Driver");
	Connection conn =     DriverManager.getConnection("jdbc:mysql://localhost:3306/uninterest","root","root");
 DefaultCategoryDataset bar = new DefaultCategoryDataset();
  Statement stmt = conn.createStatement();
   ResultSet r = stmt.executeQuery("select * from overall where pdt='"+p+"'");
   System.out.println("hai");
   if(r.next()) 
   {
   String name = r.getString("pdt");
   int inc = r.getInt(2);
   int inc1=r.getInt(3);
  // System.out.println("parameter is---->"+name);
   System.out.println("parameter is for 3rd---->"+inc1);
  
  
   bar.addValue(inc1,"Target Opinion",name);
  
  // bar.addValue(inc1,"Uncertainty Effects",name);
    }
   System.out.println("h");
   JFreeChart BarChartObject=ChartFactory.createBarChart("Opinion Mining","Product","Opinion Rank",bar,PlotOrientation.VERTICAL,true,true,false);

    response.setContentType("image/png"); 


    ChartUtilities.writeChartAsPNG(out, BarChartObject, 400, 300);
   
    System.out.println("ha");
     }
             catch (Exception e) {
           System.err.println(e.toString());
            }
         finally {
     out.close();
  }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}