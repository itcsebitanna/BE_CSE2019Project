package test;
import java.util.*;
public class Test
{
	public static void main(String args[])
	{
		String name="1101111011111001101111011111";
		
		LinkedList<Integer>value=new LinkedList<Integer>();
		int temp=0;
		for(int i=0;i<name.length();i++)
		{
			String num=""+name.charAt(i);
			if(num.equals("1"))
				temp++;
			if(num.equals("0")||name.length()-1==i)
			{
				value.add(temp);
				temp=0; 
			}
		}
		System.out.println("Largest Value of 1 is == "+Collections.max(value)+" Times");
		System.out.println("This is Full Value Count");
		System.out.println(value);
	}
}
