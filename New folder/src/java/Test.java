
public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String ss[]=new String[100];
		String h="@gmail.com";
	    String f="@gmail.com";
		String d="@yahoo.com";
		String f1="@rediff.com";
		String q="srinivasan.kvk@gmail.com";
		if(q.contains(h)||q.contains(f)||q.contains(d)||q.contains(f1))
		{
			System.out.println("yes");
			 ss=q.split("@");
			for(int i=0;i<ss.length;i++)
			{
				if(i==1){
			System.out.println(ss[1]);
				}
			}
		}
		else
		{
			System.out.println("nothing matches");
		}
	}

}
