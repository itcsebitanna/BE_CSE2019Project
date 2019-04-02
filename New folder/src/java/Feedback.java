

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

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
@WebServlet("/Feedback")
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Feedback() {
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
int a=1;
		
		System.out.println("im here@ Feedback Servlet");
		
		
	    try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
			Statement st;
			st = con.createStatement();
			 String sql="update booked set comments='"+feed+"' where id='"+mail+"' ";
				int rs = st.executeUpdate(sql);
								
	}
	    catch(Exception e)
	    {
	    	System.out.println("cant update");
	    }
	    
	    
	    
	    
	    try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
			Statement st1;
			st1 = con.createStatement();
			System.out.println("2nd statement created..........");
			 String sql="select * from positive where gud like'%"+feed+"%' ";
				ResultSet rs = st1.executeQuery(sql);
			
				
				
				if(rs.next())
				{
					

					try {
						
						
//						Class.forName("com.mysql.jdbc.Driver");
//						con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
//						Statement st4;
//						st4 = con.createStatement();
//						System.out.println("statement created for if");
//						String d1="update overall set pos='"+w2+"' where pdt='"+pdt+"' ";
//			
//						int rs1=st4.executeUpdate(d1);
					
						try {
							Statement st5;
							st5 = con.createStatement();
							String u="No negative feedback for this session";
							System.out.println("trying to update category table");
							String d2="insert into cate(pdt,pos,neg,user)values('"+pdt+"','"+feed+"','"+u+"','"+mail+"')";
							int rse=st5.executeUpdate(d2);
							System.out.println("category table finished");
							try {
								Statement st10;
								st10 = con.createStatement();
								System.out.println("now");
								System.out.println("trying to update overall table");
								System.out.println("the product is--->"+pdt);
								String d3="select * from overall where pdt='"+pdt+"'";
							
								ResultSet r=st10.executeQuery(d3);
								//System.out.println("query is excd--->");
								
								if(r.next())
								{
									System.out.println("came inside if loop--------");
									int p=r.getInt(2);
									 System.out.println("the rank is--->"+p);
										int qp=p+1;
										System.out.println("the altered rank is----->"+qp);
										Statement st11;
										st11= con.createStatement();
										String q="update overall set pos='"+qp+"' where pdt='"+pdt+"'";
										int re=st11.executeUpdate(q);
										System.out.println("rank is altered");
								}
								
							} catch (Exception e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							
							
							
							
							
							//String d2="insert into cate  pos='"+w2+"' where pdt='"+pdt+"' ";
							//String d2="insert into pi(pdt,pos)values('"+pdt+"','"+feed+"')";
							int rs2=st5.executeUpdate(d2);
							//System.out.println("positive count increased...pls see");
							response.sendRedirect("upro.jsp");
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
					} catch (Exception e) {
						// TODO Auto-generated catch block
						System.out.println(e);
					}
					
				}
				
				
				else
				{
					try {
//						
//						Class.forName("com.mysql.jdbc.Driver");
//						con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
//						Statement st5;
//						st5 = con.createStatement();
//						System.out.println("statement created for else");
//						String d1="update overall set neg='"+z+"' where product='"+pdt+"' ";
//						int rs1=st5.executeUpdate(d1);
						
						
						try {
							Connection n=null;
							Class.forName("com.mysql.jdbc.Driver");
						   n = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
							Statement st6;
							st6 = con.createStatement();
							String u="No Positive feedback for this session";
							System.out.println("trying to update the category table");
							String d6="insert into cate(pdt,pos,neg,user)values('"+pdt+"','"+u+"','"+feed+"','"+mail+"')";
							//String d6="insert into ni(pdt,neg)values('"+pdt+"','"+feed+"')";
							//String d2="insert into cate  pos='"+w2+"' where pdt='"+pdt+"' ";
							int rs2=st6.executeUpdate(d6);
							try {
								Statement st13;
								st13 = con.createStatement();
								
								System.out.println("trying to update overall table");
								String d3="select * from overall where pdt='"+pdt+"' ";
								ResultSet r=st13.executeQuery(d3);
								System.out.println("qwerty executed");
								
								if(r.next())
								{
									System.out.println("im in else loop for the");
									int p=r.getInt(3);
									System.out.println("the rank is--->"+p);
									int qp=p+1;
									System.out.println("the altered rank is----->"+qp);
									Statement st14;
									st14= con.createStatement();
									String q="update overall set neg='"+qp+"' where pdt='"+pdt+"'";
									int re=st14.executeUpdate(q);
								}
								
							} catch (Exception e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
						
						
						
						
						
						 response.sendRedirect("upro.jsp");
					} catch (Exception e) {
						// TODO Auto-generated catch block
						System.out.println("not inserted");
					}
				}
				
	}
	    
	    catch(Exception e)
	    {
	    	System.out.println("not sure if everything done well");
	    }

	    
	    
	    
	    
}
}
		
		