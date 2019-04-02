

import java.io.IOException;
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

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class Feedback
 */
@WebServlet("/Fe")
public class Fe extends HttpServlet {
	 int a=0;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Fe() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub

				System.out.println("L-BFGS Algorithm Steps");
				String feed=request.getParameter("f1");
				System.out.println(feed);
				HttpSession session=request.getSession(); 
				String mail=(String)session.getAttribute("mail");
				String pdt=(String)session.getAttribute("counter");
				System.out.println(" mail id is------->"+mail);
				System.out.println(" pdt id is------->"+pdt);
				System.out.println("the product is=---->"+pdt);
				System.out.println("the feedback is----->"+feed);
				int count=10;
				System.out.println("the count is------>"+count);  
				Connection con=null;

				
				System.out.println("im here@ Feedback Servlet");
				
				System.out.println(feed);
			    try 
			    {
					Class.forName("com.mysql.jdbc.Driver");
					con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
					Statement st;
					st = con.createStatement();
					String sql="update booked set comments='"+feed+"' where id='"+mail+"' && pdt='"+pdt+"' ";
				    int rs = st.executeUpdate(sql);
										
			    }
			    catch(Exception e)
			    {
			    	System.out.println("cant update");
			    }
			    
			    
			    System.out.println("Value Checking======="+a);
			    
			        try {
						ResultSet rq;

						Class.forName("com.mysql.jdbc.Driver");
						con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
						Statement st1;
						st1 = con.createStatement();
						System.out.println(" statement created with break12..........");
						String sql="select neg from negative";
							rq = st1.executeQuery(sql);
							System.out.println("im n negative table");
							int i = 0;
							while(rq.next()) 
							{ 
							String d=rq.getString(1);
							   System.out.println("feed===="+feed);
							   System.out.println("d===="+d);
							if(feed.contains(d))
							{
							  a=1;  
							    break;
							} // terminate loop if i is 10 
							//System.out.println("i: " + i); 
							i++; 
							}
					} catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} 

			        System.out.println("value of A "+a); 
							if(a==1)
							{    System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaa=============="+a);
								Connection co=null;
									a=0;
								System.out.println("neg pdt");
								
								System.out.println(pdt);
								System.out.println(mail);
								
								try {
									Class.forName("com.mysql.jdbc.Driver");
									
									co = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
									
									Statement smt;
									smt = co.createStatement();
									String u="-";
									System.out.println("trying to update category table");
									String d2="insert into cate(pdt,pos,neg,user)values('"+pdt+"','"+u+"','"+feed+"','"+mail+"')";
									int rse=smt.executeUpdate(d2);
								
									System.out.println("aaaaaaaaaagkjbhfhcgc===="+a);
									Statement st10;
									st10 = con.createStatement();
									System.out.println("now");
									System.out.println("trying to update overall table");
									System.out.println("the product is--->"+pdt);
									String d3="select * from overall where pdt='"+pdt+"'";
								
									ResultSet r=st10.executeQuery(d3);
									
									if(r.next())
									{
										System.out.println("came inside if loop--------");
										int p=r.getInt(3);
										 System.out.println("the rank is--->"+p);
											int qp=p+1;
											System.out.println("the altered rank is----->"+qp);
											Statement st11;
											st11= con.createStatement();
											String q="update overall set neg='"+qp+"' where pdt='"+pdt+"'";
											int re=st11.executeUpdate(q);
											System.out.println("rank is altered");
											
									}
									RequestDispatcher rd=request.getRequestDispatcher("upro.jsp");
									rd.include(request, response);
								}
								catch (SQLException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								} catch (ClassNotFoundException e) {
									// TODO Auto-generated catch block
									e.printStackTrace();
								}						
								System.out.println("aaaaaaaaaaaaaaaaaaaaaaaaaaaa=============="+a);			
								
								}
							
							else
							{
			    
			    System.out.println("good pdt");
			    Connection n=null;
			    try {
				Class.forName("com.mysql.jdbc.Driver");
			    n = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
				Statement st6;
				st6 = con.createStatement();
				String u="-";
				System.out.println("trying to update the category table");
				String d6="insert into cate(pdt,pos,neg,user)values('"+pdt+"','"+feed+"','"+u+"','"+mail+"')";
				int rs2=st6.executeUpdate(d6);
				Statement st13;
				st13 = con.createStatement();
				
				System.out.println("trying to update overall table");
				String d3="select * from overall where pdt='"+pdt+"' ";
				ResultSet r=st13.executeQuery(d3);
				System.out.println("qwerty executed");
				
				if(r.next())
				{
					System.out.println("im in else loop for the");
					int p=r.getInt(2);
					System.out.println("the rank is--->"+p);
					int qp=p+1;
					System.out.println("the altered rank is----->"+qp);
					Statement st14;
					st14= con.createStatement();
					String q="update overall set pos='"+qp+"' where pdt='"+pdt+"'";
					int re=st14.executeUpdate(q);
				}
				RequestDispatcher rd=request.getRequestDispatcher("upro.jsp");
				rd.include(request, response);
			    }
				catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				  System.out.println("Positive Negative Tag Checking L-BFGS Algorithm"+a);
			  //  a=0;
				}	
				System.out.println("Loop complete.");
				} 
				}

				
				