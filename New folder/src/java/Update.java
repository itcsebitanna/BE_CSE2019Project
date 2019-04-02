

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
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

	    PrintWriter out = response.getWriter();
	    HttpSession session=request.getSession(); 
	    String group=(String)session.getAttribute("myobj");
	    System.out.println(group);
        
      
        List<String> ms = new ArrayList<String>();
        String finalimage = "";
        boolean isMultipart = ServletFileUpload.isMultipartContent(
                request);
        List<String> m = new ArrayList<String>();
        File savedFile;
       
        if (!isMultipart) {
        	
            System.out.println("File Not Uploaded");
        } 
        else {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List items = null;

            try {
                items = upload.parseRequest(request);
                
                } 
            catch (FileUploadException e)
            {
                e.printStackTrace();
            }
            Iterator itr = items.iterator();
            while (itr.hasNext()) {
                List<String> al = new ArrayList<String>();

                String sss = "";
                FileItem item = (FileItem) itr.next();
                String value = "";
                String a[];
                if (item.isFormField()) {
                    String name = item.getFieldName();
                    //System.out.println("name: "+name+'\n');
                    value = item.getString();
                    // System.out.println("value: "+value);
                    al.add(value);
                    for (int i = 0; i < al.size(); i++) {
                        sss += al.get(i);
                        System.out.println("is this image" + sss);

    
                    }

                    a = sss.split("-");
                    for (int i = 0; i < a.length; i++) {

                        String am = a[i];
                        System.out.println("aaaaaaaaaaaaaaaa" + a[i]);
                        m.add(a[i]);
                    }
                } else {

                    String itemName = item.getName();
                

                    String reg = "[.*]";
                    String replacingtext = "";
                    
                    Pattern pattern = Pattern.compile(reg);
                    Matcher matcher = pattern.matcher(itemName);
                    StringBuffer buffer = new StringBuffer();

                    while (matcher.find()) {
                        matcher.appendReplacement(buffer, replacingtext);
                    }
                    int IndexOf = itemName.indexOf(".");
                    int Indexf = itemName.indexOf(".");
                    String domainName = itemName.substring(IndexOf);


                    finalimage = buffer.toString() + domainName;
                    System.out.println("Final Image===" + finalimage);
                    ms.add(finalimage);
                    ms.get(0);
                    String  fn=ms.get(0);
                  	System.out.println("trying to put all in store");
                    savedFile = new File("D:\\Injection\\SRC\\web\\uploads\\"+ finalimage);
                       
                    
                 
                    String a0=request.getParameter(value);
          
                    try {
						item.write(savedFile);
					} catch (Exception e) {
						e.printStackTrace();
					}

                }
            }
        }
    
        try {
        	
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("loading class loaders");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/uninterest","root","root");
                  System.out.println("DB connected");
                  System.out.println("hi im here at the  upload servlet code");
    
//                  System.out.println(m.get(0));
                  String g=ms.get(0);
                  System.out.println("g is============"+g);
//                 
                 
                   int a=0;
                   System.out.println("trying to update....."); 
     
             
         
            	String s2="INSERT INTO products(category,name,brand,price,date,quantity,image,total) values('"+m.get(0)+"','"+m.get(1)+"','"+m.get(2)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"','"+ms.get(0)+"','"+m.get(5)+"') ";
            	
            	Statement pst2=(Statement) con.createStatement();
  	         
  	            int exe2 = pst2.executeUpdate(s2);
  	           
        int dumy=0;
  	          String s3="INSERT INTO overall(pdt, pos, neg) VALUES ('"+m.get(1)+"', '"+dumy+"','"+dumy+"');";      
            
  	        Statement pst3=(Statement) con.createStatement();
 	         
	            int exe3 = pst3.executeUpdate(s3);
           
            
           
            System.out.println("datas altered uploaded in db");
       
            response.sendRedirect("admin1.jsp");
       
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Update.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
        	out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"Incorrect Values Entered\")");

			out.println("</script>");
			
			RequestDispatcher rd=request.getRequestDispatcher("additem.jsp");
			rd.include(request, response);
        }
}
}
