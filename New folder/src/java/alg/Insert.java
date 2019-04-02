package alg;

import CBF.Stem;
import CBF.Stopwords;
import CBF.replace;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

/**
 * Servlet implementation class Insert
 */
@WebServlet("/Insert")
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Insert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String filename=request.getParameter("data");
		File f =new File("D:\\Injection\\SRC\\web\\dataset\\"+filename); 
                Stopwords stop=new Stopwords();
                Stem st=new Stem();
                replace rep=new replace();
		try
		{
			System.out.println("entering ........"); 
		    Class.forName("com.mysql.jdbc.Driver");
		    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
		    PreparedStatement query=con.prepareStatement("truncate table dataset");
		    query.executeUpdate();
		    
		    con.setAutoCommit(false);
		    PreparedStatement pstm = null ;
		    FileInputStream input = new FileInputStream(f.getAbsolutePath());
		    POIFSFileSystem fs = new POIFSFileSystem( input );
		    HSSFWorkbook wb = new HSSFWorkbook(fs);
		    HSSFSheet sheet = wb.getSheetAt(0);
		    HSSFRow row;
		    for(int i=1; i<=sheet.getLastRowNum(); i++)
		    {
		        row = sheet.getRow(i);
		        
		        String product = row.getCell(0).getStringCellValue();
		        String reviews = row.getCell(1).getStringCellValue();
		        Date date = row.getCell(2).getDateCellValue();
		        SimpleDateFormat sf = new SimpleDateFormat("dd/MM/yyyy");
		        String sss = sf.format(date);  

		        String user = row.getCell(3).getStringCellValue(); 
		        String category = row.getCell(4).getStringCellValue();
		        int price=(int)row.getCell(5).getNumericCellValue(); 
		        String image=row.getCell(6).getStringCellValue(); 
		        String sql = "insert into dataset(product_name,review,date,category,image,user,price) values('"+product+"','"+reviews+"','"+sss+"','"+category+"','"+image+"','"+user+"','"+price+"') ";
		        pstm = (PreparedStatement) con.prepareStatement(sql);
		        pstm.execute();
		        System.out.println("Import rows "+i);
		        con.commit();
		        pstm.close();
		    }
		    con.close();
		    input.close();
		    System.out.println("Success import excel to mysql table");
		}
		catch(SQLException e)
		{
		    System.out.println(e);  
		    e.printStackTrace();
		}  
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		}
		catch(java.lang.NullPointerException e)
		{
			
		}
		PrintWriter out = response.getWriter();
		out.println("<script type=\"text/javascript\">"); 			
		out.println("alert(\"Succesfully Updated for sql\")");
		out.println("</script>");
		RequestDispatcher rd=request.getRequestDispatcher("give.jsp");   
		rd.include(request,response);
		response.sendRedirect("admin1.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
