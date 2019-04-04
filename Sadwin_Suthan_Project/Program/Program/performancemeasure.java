import java.io.*;
import java.util.*;
import java.awt.image.*;
import javax.imageio.*;
import javax.imageio.stream.ImageOutputStream;
import java.awt.Toolkit;
import java.awt.Image;
class performancemeasure 
{
	public static void main(String[] args) throws Exception 
	{
   
		Image imagei = Toolkit.getDefaultToolkit().getImage("F:\\Project\\Sample\\opt_output4_2_foreman_reversemad.jpg");
		PixelGrabber grabber = new PixelGrabber(imagei, 0, 0, -1, -1, false); 
		grabber.grabPixels();
		int[] data = (int[]) grabber.getPixels();
		int imgwidth = grabber.getWidth();
		int imgheight = grabber.getHeight();
	
		int pixel[][] = new int[imgheight][imgwidth];
		for(int i=0; i<imgheight;i++)
		{
			for(int j=0;j<imgwidth;j++) 
			{
				pixel[i][j] = data[(i*imgwidth) + j];
			}
		}
		
		Image image1 = Toolkit.getDefaultToolkit().getImage("F:\\Project\\Sample\\opt_output4_2_foreman_10rev_comp.jpg");
		PixelGrabber grabber1 = new PixelGrabber(image1, 0, 0, -1, -1, false); 
		grabber1.grabPixels();
		int[] data1 = (int[]) grabber1.getPixels();
		int pixel1[][] = new int[imgheight][imgwidth];
		for(int i=0; i<imgheight;i++)
		{
			for(int j=0;j<imgwidth;j++) 
			{
				pixel1[i][j] = data1[(i*imgwidth) + j];
			}
		}
		double mse=0;
		double psnr;
		for(int i=0;i<imgheight;i++)
		{
			for(int j=0;j<imgwidth;j++)
			{
				mse+=Math.pow((pixel[i][j]-pixel1[i][j]),2);
			}
		}
		//mse=mse/(imgheight*imgwidth);
		System.out.println("MSE="+mse);
		int rr=16777216;
		psnr=Math.abs(20*Math.log10(rr/Math.sqrt(mse)));
		System.out.println("PSNR = "+psnr);
   	}
}
