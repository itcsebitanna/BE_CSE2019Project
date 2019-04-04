

import java.awt.Image;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.awt.image.PixelGrabber;
import java.io.File;

import javax.imageio.ImageIO;

public class hell {

	/**
	 * @param args
	 */
	public static void main(String[] args) throws Exception {
		BufferedImage img = null;
 		File f = new File("F:\\tet\\edgesss.jpg");
 		File f1 = new File("F:\\tet\\noedgess.jpg");
 		Image imagei = Toolkit.getDefaultToolkit().getImage("F:\\tet\\img.jpg");
 		Image imagei1 = Toolkit.getDefaultToolkit().getImage("F:\\tet\\abab.jpg");
 		PixelGrabber grabber = new PixelGrabber(imagei, 0, 0, -1, -1, false); 
 		PixelGrabber grabber1 = new PixelGrabber(imagei1, 0, 0, -1, -1, false); 
 		grabber.grabPixels();
 		grabber1.grabPixels();
 		int[] data = (int[]) grabber.getPixels();
 		int[] data1 = (int[]) grabber1.getPixels();
 		int imgwidth = grabber.getWidth();
 		int imgheight = grabber.getHeight();
 		int siz = imgwidth*imgheight;
 		int[] err = new int[siz];
 		int grey[][] = new int[imgheight][imgwidth];
 		int alpha=0;
 		int red[] = new int[siz];
 		int green[] = new int[siz];
 		int blue[] = new int[siz];
 		int alpha1=0;
 		int red1[] = new int[siz];
 		int green1[] = new int[siz];
 		int blue1[] = new int[siz];
 		int red2[] = new int[siz];
 		int green2[] = new int[siz];
 		int blue2[] = new int[siz];
	    int q=0;
	    for (int i = 0; i < imgheight; i++)
        {
            for (int j = 0; j < imgwidth; j++)
            {
                alpha = (data[q] >> 24) & 0xff;
                red[q] = (data[q] >> 16) & 0xff;
                green[q] = (data[q] >> 8) & 0xff;
                blue[q] = (data[q]) & 0xff;
                
                red2[q] = red[q];
                green2[q] = green[q];
                blue2[q] = blue[q];
                
                red1[q] = (data1[q] >> 16) & 0xff;
                green1[q] = (data1[q] >> 8) & 0xff;
                blue1[q] = (data1[q]) & 0xff;
                
                grey[i][j] = (red1[q] + green1[q]+ blue1[q]) / 3;
                if(grey[i][j]<110){
                	grey[i][j] = 255;
                }else{
                	grey[i][j] = 0;
                }
                //System.out.println(grey[i][j]);
                q++;
            }
        }
	    q=0;
	    for(int i=0;i<imgheight;i++){
	    	for(int j=0;j<imgwidth;j++){
	    		if(grey[i][j]==0){
	    			red[q] = red[q];
	    			green[q] = green[q];
	    			blue[q] = blue[q];
	    		}else{
	    			red[q] = 255;
	    			green[q] = 255;
	    			blue[q] = 255;
	    			/*red2[q] = red[q];
	    			green2[q] = green[q];
	    			blue2[q] = blue[q];*/
	    		}
	    		q++;
	    	}
	    }
	    q=0;
	    for(int i=0;i<imgheight;i++){
	    	for(int j=0;j<imgwidth;j++){
	    		if(grey[i][j]!=0){
	    			red2[q] = red2[q];
	    			green2[q] = green2[q];
	    			blue2[q] = blue2[q];
	    		}else{
	    			red2[q] = 255;
	    			green2[q] = 255;
	    			blue2[q] = 255;
	    			/*red2[q] = red[q];
	    			green2[q] = green[q];
	    			blue2[q] = blue[q];*/
	    		}
	    		q++;
	    	}
	    }
	    q=0;
	    img = new BufferedImage(imgwidth,imgheight,BufferedImage.TYPE_INT_RGB);
		for(int y=0; y<imgheight;y++) {
			for(int x=0;x<imgwidth;x++,q++) {
				//int h = grey[y][x];
				int a = 255;
				int p = (a<<24) | (red[q]<<16) | (green[q]<<8) | blue[q];
				//int p = (a<<24) | (h<<16) | (h<<8) | h;
				img.setRGB(x, y, p);
			}
		}
		ImageIO.write(img, "jpg" ,f);
		q=0;
	    BufferedImage img1 = new BufferedImage(imgwidth,imgheight,BufferedImage.TYPE_INT_RGB);
		for(int y=0; y<imgheight;y++) {
			for(int x=0;x<imgwidth;x++,q++) {
				//int h = grey[y][x];
				int a = 255;
				int p = (a<<24) | (red2[q]<<16) | (green2[q]<<8) | blue2[q];
				//int p = (a<<24) | (h<<16) | (h<<8) | h;
				img1.setRGB(x, y, p);
			}
		}
		ImageIO.write(img1, "jpg" ,f1);

	}

}
