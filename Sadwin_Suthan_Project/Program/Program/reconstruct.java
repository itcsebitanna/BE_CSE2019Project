import java.awt.Image;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.awt.image.PixelGrabber;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class reconstruct {
	
	public static int clip(int a){
		
		int clip = Math.max(0,Math.min(255,a));
		return clip;
	}
	
	public static int form1(int a,int b,int c,int d){
		
		int dd = (int)((a-(4*b)+(4*c)-d)/8);
		
		return dd;
	}
	
	public static int updownramp(int a,int b){
		
		double temp = (double) a;
		int temp1 = (int)(Math.signum(temp));
		int tep = temp1 * (Math.max(0, Math.abs(a)-Math.max(0,2*(Math.abs(a)-b))));
		return tep;
	}

	/**
	 * @param args
	 * @throws Exception 
	 */
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		/*File input = new File("F:\\Project\\lenaw.jpg");
 		BufferedImage image = ImageIO.read(input);*/
 		BufferedImage img = null;
 		File f = new File("F:\\Output\\deblknews.jpg");
 		Image imagei = Toolkit.getDefaultToolkit().getImage("F:\\Output\\newop.jpg");
 		PixelGrabber grabber = new PixelGrabber(imagei, 0, 0, -1, -1, false); 
 		grabber.grabPixels();
 		int[] data = (int[]) grabber.getPixels();
 		int imgwidth = grabber.getWidth();
 		int imgheight = grabber.getHeight();
 		int siz = imgwidth*imgheight;
 		int[] err = new int[siz];
 		int[][] pixel = new int[imgheight][imgwidth];
 		int grey[][] = new int[imgheight][imgwidth];
 		int alpha=0;
 		int red[] = new int[siz];
 		int green[] = new int[siz];
 		int blue[] = new int[siz];
        int q=0;
        int strength = 5;
        for (int i = 0; i < imgheight; i++)
        {
            for (int j = 0; j < imgwidth; j++)
            {
                alpha = (data[q] >> 24) & 0xff;
                red[q] = (data[q] >> 16) & 0xff;
                green[q] = (data[q] >> 8) & 0xff;
                blue[q] = (data[q++]) & 0xff;
                //grey[i][j] = (red + green+ blue) / 3;
                //System.out.println(i+" "+j);
            }
        }
        int re=0;
        for(int e=0;e<2;e++){
        	if(e==0){
        		for(int r=0;r<imgwidth;r++){
        			for(int w=0;w<imgheight;w++){
        				grey[r][w] = red[re++];
        			}
        		}
        		re=0;
        		
        	}else if(e==1){
        		
        		for(int r=0;r<imgwidth;r++){
        			for(int w=0;w<imgheight;w++){
        				grey[r][w] = green[re++];
        			}
        		}
        		re=0;
        	}else if(e==2){
        		for(int r=0;r<imgwidth;r++){
        			for(int w=0;w<imgheight;w++){
        				grey[r][w] = blue[re++];
        			}
        		}
        		re=0;
        	}
        int k=0,it=0;
        while(it<3){
        while(k<256){
        	for(int i = 7;i<256;i=i+8){
        		for(int j= k;j<k+8;j++){
        			if(i+1<255){
        				//System.out.println(i+" "+j);
        			int A = grey[i-1][j];
        			int B = grey[i][j];
        			int C = grey[i+1][j];
        			int D = grey[i+2][j];
        			int d = form1(A,B,C,D);
        			//System.out.print(A+" "+B+" "+C+" "+D+"    ");
        			int temp = updownramp(d,strength);
        			int d2 = clip(updownramp((A-D)/4,temp/2));
        			int yt = (int) Math.ceil((A-D)/4);
        			int d3 = (Math.max(yt,Math.min(temp/2,yt)));
        			int B1 = clip(B+temp);
        			int C1 = C-temp;
        			int A1 = A-d3;
        			int D1 = D+d3;
        			//System.out.println(A1+" "+B1+" "+C1+" "+D1);
        			grey[i-1][j] = A1;
        			grey[i][j] = B1;
        			grey[i+1][j] = C1;
        			grey[i+2][j] = D1;	
        			}
        		}
        	}
        	for(int j = 7;j<256;j=j+8){
        		for(int i= k;i<k+8;i++){
        			if(j+1<255){
        				//System.out.println(i+" "+j);
        			int A = grey[i][j-1];
        			int B = grey[i][j];
        			int C = grey[i][j+1];
        			int D = grey[i][j+2];
        			int d = form1(A,B,C,D);
        			//System.out.print(A+" "+B+" "+C+" "+D+"    ");
        			int temp = updownramp(d,strength);
        			int d2 = clip(updownramp((A-D)/4,temp/2));
        			int yt = (int) Math.ceil((A-D)/4);
        			int d3 = (Math.max(yt,Math.min(temp/2,yt)));
        			int B1 = clip(B+temp);
        			int C1 = clip(C-temp);
        			int A1 = A-d3;
        			int D1 = D+d3;
        			//System.out.println(temp+" "+d3);
        			System.out.println(A1+" "+B1+" "+C1+" "+D1);
        			grey[i][j-1] = A1;
        			grey[i][j] = B1;
        			grey[i][j+1] = C1;
        			grey[i][j+2] = D1;	
        			}
        		}
        	}
        	
        	k=k+8;        	
        }
        it++;
        k=0;
        }
        if(e==0){
    		for(int r=0;r<imgwidth;r++){
    			for(int w=0;w<imgheight;w++){
    				red[re++]=grey[r][w];
    			}
    		}
    		re=0;
    		
    	}else if(e==1){
    		
    		for(int r=0;r<imgwidth;r++){
    			for(int w=0;w<imgheight;w++){
    				green[re++] = grey[r][w];
    			}
    		}
    		re=0;
    	}else if(e==2){
    		for(int r=0;r<imgwidth;r++){
    			for(int w=0;w<imgheight;w++){
    				blue[re++] = grey[r][w];
    			}
    		}
    		re=0;
    	}
        }
        img = new BufferedImage(imgwidth,imgheight,BufferedImage.TYPE_INT_RGB);
		for(int y=0; y<imgheight;y++) {
			for(int x=0;x<imgwidth;x++) {
				int h = grey[y][x];
				int a = 255;
				int p = (a<<24) | (red[re]<<16) | (green[re]<<8) | blue[re];
				img.setRGB(x, y, p);
				re++;
			}
		}
		ImageIO.write(img, "jpg" ,f);
      
        
        
        
	}

}
