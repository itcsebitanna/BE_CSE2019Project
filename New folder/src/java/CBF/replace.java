package CBF;

public class replace 
{
	public String remove(String words)
	{
		words=words.replace("'", "");
		words=words.replace(".", "");		
		words=words.replace(",", "");
		words=words.replace("(", "");
		words=words.replace(")", "");
		words=words.replace("]", "");
		words=words.replace("[", "");
		words=words.replace("\"", "");
                words=words.replace("//", "");
                words=words.replace(";", "");
		words=words.replace("?", "");
                words=words.replace("??", "");
		words=words.replace("!", "");
		words=words.replace(":", "");
                words=words.replace("#", "");
                words=words.replace("¦", "");
                words=words.replace("https", "");
                words=words.replace("http", "");
                words=words.replace("Http", "");
                words=words.replace("Https", "");
		words=words.replaceAll("( )+", " ");
                words=words.replace("https:", "");
                words=words.replace("@", "");
		words=words.trim();
		return words;
	}
	public static void main(String args[])
	{
		replace r=new replace();
		System.out.println(r.remove(" hai' how. don't some,     ' \"hai\" '      beautifull")); 
	}
}
