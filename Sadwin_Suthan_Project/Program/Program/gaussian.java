package jpg;

import java.awt.*;
import java.awt.image.*;
import java.io.*;

import com.sun.image.codec.jpeg.*;

import java.util.*;
import java.math.*;
import java.lang.Math.*;

import jpg.WriteImage;

class gauss
{
	public static void main(String args[])
	{
		try
		{
			String filename = "F:\\tet\\strsob.jpg";
			String name = "F:\\tet\\sobgauss.jpg";
			Image img = Toolkit.getDefaultToolkit().getImage(filename);
            			MediaTracker media = new MediaTracker(new Container());    
        			media.addImage(img,0);
            			media.waitForID(0);  
            			int n;
            			WriteImage a  = new WriteImage();         
            
           		 //get width and height of the image

            			int imgwidth = img.getWidth(null);
            			int imgheight = img.getHeight(null);

            		//pixel values
          			  int[] pel = new int[imgwidth*imgheight];

            //RGB values
            int[][][] rgb=new int [imgheight][imgwidth][4];	
             
            int [][] gray = new int [imgheight][imgwidth];	
            int [][] gray_1 = new int [imgheight][imgwidth];
            int [][] gray_2 = new int [imgheight][imgwidth];
            	
            PixelGrabber pg = new PixelGrabber(img,0,0,imgwidth,imgheight,pel,0,imgwidth);
            pg.grabPixels(); 
            
            System.out.println("Image Width is "+imgwidth);
            System.out.println("Image Height is "+imgheight);
            
            int q=0;
            for(int i=0;i<imgheight;i++)
            {
            	for(int j=0;j<imgwidth;j++)
            	{
            		rgb[i][j][0] = (pel[q] >> 24) & 0xff;
					rgb[i][j][1] = (pel[q] >> 16) & 0xff;
					rgb[i][j][2] = (pel[q] >>  8) & 0xff;
					rgb[i][j][3] = (pel[q++]) & 0xff;
					gray[i][j]=(rgb[i][j][1]+rgb[i][j][2]+rgb[i][j][3])/3;
					gray_1[i][j]=gray[i][j];
					gray_2[i][j]=gray[i][j];
								 
            	}
            }        	
            	
           
           //	STEP 1:  Gaussian Matrix with sigma = 1.4
           int gaussian_matrix[][] =  { {2,4,5,4,2},
           								{4,9,12,9,4},
           								{5,12,15,12,5},
           								{4,9,12,9,4},
           								{2,4,5,4,2} };
           	
           	int sum=0;
           		
           		int i2=0, j2=0;						
           	  for(int i=0;i<=imgheight-5;i++)
           	  {
           	  	for(int j=0;j<=imgwidth-5;j++)
           	  	{
           	  	
           	  		for(int i1=i;i1<i+5;i1++)
           	  		{
           	  			
           	  			for(int j1=j;j1<j+5;j1++)
           	  			{
           	  			
           	  			sum =sum + gray[i1][j1] * gaussian_matrix[i2][j2];
           	  			j2++;	
           	  			}
           	  			i2++;
           	  			j2=0;
           	  		}
           	  		i2 = 0;
           	  		j2 = 0;
           	  	
           	  		float sum_1 = sum/115;
           	  		//System.out.println(" Sum is :"+sum);
           	  		//System.out.println(" Sum_1 is :"+sum_1);
           	  		gray_1[i+2][j+2] = (int)Math.round(sum_1);
			if(gray_1[i+2][j+2]>255)
				gray_1[i+2][j+2]=255;
			else if(gray_1[i+2][j+2]<0)
				gray_1[i+2][j+2]=0;
           	  		sum = 0;
           	  		}
           	  }
                

        	System.out.println("Writing image in jpg format");
 			 n=0;
            for(int x=0;x<imgheight;x++)
            {
                for(int y=0;y<imgwidth;y++)
                {
                    
                    pel[n++] = ((255<<24)|(gray_1[x][y]<<16)|(gray_1[x][y]<<8)|(gray_1[x][y]));
                }
            }
            a.writeImage(name,pel,imgwidth,imgheight,img);   	
            	
		}
		catch ( Exception e)
		{
			System.out.println(e);
		}
	}
}