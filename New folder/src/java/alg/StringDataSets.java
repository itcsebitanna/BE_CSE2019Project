package alg;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class StringDataSets 
{
	static long Start=0,End=0,Total=0;
	static LinkedHashMap<String,Integer>nonfrequents=new LinkedHashMap<String,Integer>();
	
	public LinkedHashMap<String, Integer> frequents(LinkedList<String> items) 
	{
		Start=System.currentTimeMillis();
		LinkedHashMap<String,Integer>frequents=new LinkedHashMap<String,Integer>(); 
		String filter[]=new String [items.size()];//This is converted in list to array 
	    int co=0;
	    for(String check:items)
	    { 
	       filter[co]=check;
	       co++;
	    } 
		for(int i=0;i<filter.length;i++)
		{
			String firstvalue=filter[i];
			String fvalue[]=firstvalue.split(",");
			for(int j=0;j<filter.length;j++)
			{
				String secondvalue=filter[j];
				String svalue[]=secondvalue.split(",");
				
				//First and Next Value Checking (First value Large and next value small or equal This conditions checking//
				int count=0;
				if(fvalue.length<=svalue.length)
				{                                      //orange,yellow, blue
					for(int a=0;a<fvalue.length;a++)
					{                                  //blue, yellow 
						for(int b=0;b<svalue.length;b++)
						{
							if(fvalue[a].equals(svalue[b]))
							{
								count++;
							}
						}
					}
				}
				if(count==fvalue.length)
				{
					if(frequents.containsKey(firstvalue))
                    {                           
                       Object oo=frequents.get(firstvalue);
                       String t=Integer.toString((int) oo);
                       int mm=Integer.parseInt(t);
                       frequents.put(firstvalue,mm+1);
                    }
                    else
                    {
                    	frequents.put(firstvalue,1);
                    }
				}
			}			
		}
		
		System.out.println("****All Items Sets****");
		System.out.println(frequents+"\n");
		
		Collection<String> op=frequents.keySet();
	    LinkedHashMap<String,Integer> frequentscomplete=new LinkedHashMap<String,Integer>();
	    for(String ref:op)
	    {
	       // here filter process for    Data Transaction>=minimum support count This formula applying
	       if(frequents.get(ref)>=2)
	       {
	   		   frequentscomplete.put(ref, frequents.get(ref));
	   	   }
	    }
		
		//Fully Removed for Repeated Values example:- Before Print(orange,yellow =2  yellow orange =2) After Print(orange,yellow =2)
		
		Collection<String> reduce=frequentscomplete.keySet();//Key Set(Data sets) only store to the reduce object
	    String use[]=new String[frequentscomplete.size()];
	    int k=0;
	    for(String check:reduce)						// Array Conversion...  List to Array
	    {
	      use[k]=check;
	      k++;
	    }
		
	    LinkedList<String> Result=new LinkedList<String>();
	    for(int i=0;i<use.length;i++)
		{
			String firstvalue=use[i];
			String fvalue[]=firstvalue.split(",");
			for(int j=0;j<use.length;j++)
			{
				String secondvalue=use[j];
				String svalue[]=secondvalue.split(",");
				
				//First and Next Value Checking (First value Large and next value small or equal This conditions checking//
				int count=0;
				if(!firstvalue.equals(secondvalue))
				{                                      //orange,yellow, blue
					for(int a=0;a<fvalue.length;a++)
					{                                  //blue, yellow
						for(int b=0;b<svalue.length;b++)
						{
							if(fvalue[a].trim().equals(svalue[b].trim()))
							{
								count++;
							}
						}
					}
				}
				if(count>=fvalue.length)
				{
					Result.add(firstvalue);
				}
			}				
		}
	    
	    System.out.println("****Noise Data's****");
		System.out.println(Result+"\n");
	    for(String dummy:Result)
	    {
	       frequentscomplete.remove(dummy);			//Here apply and remove for all repeated value
	    }
	    
	    System.out.println("****Frequents Items Set****"); 
	    System.out.println(frequentscomplete);
	    
	    
	    
	    
	    for(String ref:op)
	    {
	   	   if(frequents.get(ref)<2)
	   	   { 
	   		   nonfrequents.put(ref, frequents.get(ref));
	   	   }
        }  
	    System.out.println("    "+nonfrequents);
	    
	    
	    
	    End=System.currentTimeMillis();
	    Total=End-Start;
	    return frequentscomplete;
	}
	public String time()
	{
		String Time=Long.toString(Total);
		return Time;
	}
	public LinkedHashMap<String,Integer>nonfrequents()
	{
		return nonfrequents;
	}
	public static void main(String args[])
	{
		
	}
}
