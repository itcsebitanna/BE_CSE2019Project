public class check
{
	public static void main(String args[])
	{
		int poss=30,neg=19;		
		int rate=poss-neg;
		if(rate<=0)
		{
			System.out.println("There is No Stars");
		}
		else if(rate>=0&&rate<=10)
		{
			System.out.println(rate +" *");
		}
		else if(rate>10&&rate<=20)
		{
			System.out.println(rate +"  * *");
		}
		else if(rate>20&&rate<=30)
		{
			System.out.println(rate +" * * *");
		}
		else if(rate>30&&rate<=40)
		{
			System.out.println(rate +"  * * * *");
		}
		else if(rate>40&&rate<=50)
		{
			System.out.println(rate +" * * *");
		}
	}
}
