import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Connection;

class BreakLoop2 { 
    static int a; 
public static void main(String args[]) {
	Connection con=null;
	try {
		String s1="best";
		String s2="it was a worst product";
		Class.forName("com.mysql.jdbc.Driver");
		con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/uninterest","root","root");
		Statement st1;
		st1 = con.createStatement();
		System.out.println(" statement created with break12..........");
		 String sql="select gud from positive";
			ResultSet rs = st1.executeQuery(sql);
			int i = 0;
			while(rs.next()) { 
				String d=rs.getString(1);
			    //System.out.println(i);
			if(s2.contains(d))
			{
			  a=1;  
			    break;} // terminate loop if i is 10 
			//System.out.println("i: " + i); 
			i++; 
			} 

			if(a==1)
			{

			    System.out.println("good pdt");
			}else
			{
			    System.out.println("bad pdt");
			}
			System.out.println("Loop complete."); 
			
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

}
}