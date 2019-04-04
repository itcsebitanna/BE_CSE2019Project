import java.io.*;
import java.util.*;
import java.awt.image.*;
import javax.imageio.*;
import javax.imageio.stream.ImageOutputStream;
import java.awt.Toolkit;
import java.awt.Image;
class compression 
{
	public static void main(String[] args) throws Exception 
	{
   
     		File input = new File("F:\\Project\\Sample\\opt_output4_2_foreman_reversemad.jpg");
     		BufferedImage image = ImageIO.read(input);
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
		File compressedImageFile = new File("F:\\Project\\Sample\\opt_output4_2_foreman_10rev_comp.jpg");
      		OutputStream os =new FileOutputStream(compressedImageFile);
		Iterator<ImageWriter>writers =  ImageIO.getImageWritersByFormatName("jpg");
     		ImageWriter writer = (ImageWriter) writers.next();
		ImageOutputStream ios = ImageIO.createImageOutputStream(os);
      		writer.setOutput(ios);
		int qf;
      		float qq;
      		System.out.println("Enter the Quality factor");
      		Scanner sc=new Scanner(System.in);
      		qf=sc.nextInt();
      		qq=(float)1/qf;
		ImageWriteParam param = writer.getDefaultWriteParam();
      		param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
      		param.setCompressionQuality(qq);
      		writer.write(null, new IIOImage(image, null, null), param);
      		os.close();
      		ios.close();
      		writer.dispose();
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
