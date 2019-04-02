package alg;

import java.util.*;
public class Test
{
	public static void main(String args[])
	{
		LinkedHashSet ss=new LinkedHashSet();
		
		ss.add(10);
		ss.add(20);
		ss.add(30);
		ss.add(40);
		ss.add(50);
		ss.add(60);
		
		Iterator r=ss.iterator();
		String name="";
		while(r.hasNext())
		{
			System.out.println(r.next());
			
			Object dd=r.next();
			name=dd.toString();
		}
		System.out.println(name+"   dsfdsfj");
		
		String word="like the movie";
		if(word.contains("not bad")||word.contains("not good"))
		{
			if(word.contains("not bad"))
			{
				System.out.println("not bad");
			}
			else if(word.contains("not good"))
			{
				System.out.println("not good");
			}
		}
		
		else
		{
			System.out.println("else block");
		}
	}
}
