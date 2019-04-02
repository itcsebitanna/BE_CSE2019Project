import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;




public class Simple {

	public static 
	void main(String[] args) {
		// TODO Auto-generated method stub
		String s1="best";
		String s2="it was a best product";
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
			Statement st1;
			st1 = con.createStatement();
			System.out.println(" statement created with break12..........");
			 String sql="select gud from positive";
				ResultSet rs = st1.executeQuery(sql);
			
			
				String w="it is a best product";
				
					while(rs.next())
					{
						String d=rs.getString(1);
						System.out.println(" d=="+d);
						if(w.contains(d))	break;
						{
							System.out.println("ok");
					
						
						
						}
			
						
						
						
					}
					
				
					
					
				
							
				
		
					
				
							
							
				
					
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	

	}

}
