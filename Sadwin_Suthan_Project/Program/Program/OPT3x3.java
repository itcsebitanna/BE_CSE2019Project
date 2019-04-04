package jpg;

import java.awt.Image;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.awt.image.PixelGrabber;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.imageio.ImageIO;

public class OPT3x3 {
	
	public static double[][] horiedge(double[][] a){
		double[][][] b = new double[3][3][3];
		double[][] we = new double[27][1];
		int j=0;
		for(int k1=0;k1<3;k1++){
			for(int k2 =0;k2<3;k2++){
				for(int k3=0;k3<3;k3++){
					b[k1][k2][k3] = a[j++][0];
				}
			}
		}
		j=0;
		int y=0;
		for(int k1=0;k1<3;k1++){
			for(int k2 =0;k2<3;k2++){
				for(int k3=0;k3<3;k3++){
					if(y<3){
					if(k1!=0&&k2==0&&k3==0){
						we[j][0] = b[k1][k2][k3];
					}
					else if(k1==0&&k2!=0&&k3==0){
						we[j][0] = b[k1][k2][k3];
					}
					else if(k1==0&&k2==0&&k3!=0){
						we[j][0]=b[k1][k2][k3];
					}else if(k1==0&&k2==0&&k3==0){
						we[j][0] = b[k1][k2][k3];
					}
					else{
						we[j][0] = 0;
					}}
					if(we[j][0]!=0)
					System.out.print(/*we[j][0]*/j+" ");
					j++;
					y++;
				}
			}
		}
		System.out.println();
		return we;
	}
	public static double[][] texture(double[][] a){
		double[][][] b = new double[3][3][3];
		double[][] we = new double[27][1];
		int j=0;
		for(int k1=0;k1<3;k1++){
			for(int k2 =0;k2<3;k2++){
				for(int k3=0;k3<3;k3++){
					b[k1][k2][k3] = a[j++][0];
				}
			}
		}
		j=0;
		int y=0;
		for(int k1=0;k1<3;k1++){
			for(int k2 =0;k2<3;k2++){
				for(int k3=0;k3<3;k3++){
				    if(y<3){
					if(k1!=0&&k2==0&&k3==0){
						we[j++][0] = 0;
					}
					else if(k1==0&&k2!=0&&k3==0){
						we[j++][0] = 0;
					}
					/*else if(k1==0&&k2==0&&k3!=0){
						we[j++][0]=0;
					}*/
					else{
						we[j++][0] = b[k1][k2][k3];
					}}
				    y++;
					//System.out.println(j);
				}
			}
		}
		return we;
	}
	public static double[][] veredg(double[][] a, double[][] a1){
		double[][][] b = new double[3][3][3];
		double[][][] b1 = new double[3][3][3];
		double[][] we = new double[27][1];
		int j=0;
		for(int k1=0;k1<3;k1++){
			for(int k2 =0;k2<3;k2++){
				for(int k3=0;k3<3;k3++){
					b[k1][k2][k3] = a[j][0];
					b1[k1][k2][k3] = a1[j++][0];
				}
			}
		}
		j=0;
		for(int k1=0;k1<3;k1++){
			for(int k2 =0;k2<3;k2++){
				for(int k3=0;k3<3;k3++){
					if(k1!=0&&k2==0&&k3==0){
						we[j][0] = b[k1][k2][k3];
					}
					else if(k1==0&&k2!=0&&k3==0){
						we[j][0] = b[k1][k2][k3];
					}
					else if(k1==0&&k2==0&&k3!=0){
						we[j][0]=b[k1][k2][k3];
					}else if(k1==0&&k2==0&&k3==0){
						we[j][0] = b[k1][k2][k3];
					}
					else{
						we[j][0] = b1[k1][k2][k3];
					}
					//System.out.println(j);
					j++;
				}
			}
		}
		return we;
	}
	
	public static double[][] betat(double[][] Mtrans,double[][] a){
		int m = 27, n = 27, p = 1;
		double multiply[][] = new double[m][p];
		double sum;

		int k=0;
		    for (int e = 0; e < m; e++) {
		        sum = 0;
		        for (int f = 0; f < n; f++) {
		            sum = sum + Mtrans[e][f] * a[f][k];
		        }
		        multiply[e][k] = sum;
		    }
		
		return multiply;
		
	}
	public static double[][] betath(double[][] Mtrans,double[][] a){
		double[][] sum = new double[27][1];
		double s=0;

	    for (int k = 0; k < 1; k++) {
	        for (int e = 0; e < Mtrans.length; e++) {
	            s = 0;
	            for (int f = 0; f < a.length; f++) {
	                s =  (s + Mtrans[e][f] * a[f][k]);
	            }
	            sum[e][k] = s;
	        }
	    }
		
		
		return sum;
		
	}
	public static double[][] betainverse(double[][] M,double[][] a){
		double[][] sum = new double[27][1];
		double s=0;

	    for (int k = 0; k < 1; k++) {
	        for (int e = 0; e < M.length; e++) {
	            s = 0;
	            for (int f = 0; f < a.length; f++) {
	                s =  (s + M[e][f] * a[f][k]);
	            }
	            sum[e][k] = s;
	        }
	    }
		
		
		return sum;
	}
	
	public static void main(String args[])throws Exception{
		//File input = new File("F:\\tet\\img.jpg");
 		//BufferedImage image = ImageIO.read(input);
 		BufferedImage img = null;
 		File f = new File("F:\\Output\\newstex.jpg");
 		/*File f1 = new File("F:\\tet\\imgttex.jpg");*/
	Image imagei = Toolkit.getDefaultToolkit().getImage("F:\\Output\\newop.jpg");
	PixelGrabber grabber = new PixelGrabber(imagei, 0, 0, -1, -1, false); 
	grabber.grabPixels();
	int[] data = (int[]) grabber.getPixels();
	int imgwidth = grabber.getWidth();
	int imgheight = grabber.getHeight();
	int kcal = imgwidth%3;
	int siz = imgwidth*imgheight;
	int[][] pixel = new int[imgheight][imgwidth];
	//List<int[][]> input = new ArrayList<>();
	List<double[][]> inputt = new ArrayList<>();
	List<double[][]> betainv = new ArrayList<>();
	List<double[][]> beta = new ArrayList<>();	
	List<double[][]> invtex = new ArrayList<>();
	List<double[][]> invedg = new ArrayList<>();
	List<double[][]> tex = new ArrayList<>();
	List<double[][]> edg = new ArrayList<>();
	List<double[][]> cob = new ArrayList<>();
	int alpha,k = 0,q =0;
	int[][] rval = new int[imgheight][imgwidth];
	int[][] bval = new int[imgheight][imgwidth];
	int[][] gval = new int[imgheight][imgwidth];
	//System.out.println(data.length);
    for (int i = 0; i < imgheight-1; i++)
    {
        for (int j = 0; j < imgwidth-1; j++)
        {
            alpha = (data[q] >> 24) & 0xff;
            rval[i][j] = (data[q] >> 16) & 0xff;
            gval[i][j] = (data[q] >> 8) & 0xff;
            bval[i][j] = (data[q++]) & 0xff;
        }
    }
    double[][] M = new double[27][27];
	double[][] MTrans = new double[27][27];
	double[][] M1= {{1.0,-1.0,1.0},{1.0,0.0,-2.0},{1.0,1.0,1.0}};
	double[][] M2= {{1.0,-1.0,1.0},{1.0,0.0,-2.0},{1.0,1.0,1.0}};
	double[][] temp1 = new double[9][9];
	int mx=0,nx=0;
	for(int i = 0 ; i <3 ; i++)
	{	
   			for(int j = 0 ; j <3 ; j++)
    			{
			for(int px=0;px<3;px++)
			{
				for(int qx=0;qx<3;qx++)
				{								
					temp1[mx+px][nx+qx] =M1[i][j]*M2[px][qx];							
				}						
			}
			nx+=3;					
		}
		mx+=3;nx=0;				
	}
	int my=0;int ny=0;
	for(int i = 0 ; i <9 ; i++)
	{	
   				for(int j = 0 ; j <9 ; j++)
    				{
			for(int py=0;py<3;py++)
			{
				for(int qy=0;qy<3;qy++)
				{								
					M[my+py][ny+qy] =temp1[i][j]*M2[py][qy];							
				}						
			}
			ny+=3;					
		}
		my+=3;ny=0;				
	}
	
	for(int i = 0 ; i <27 ; i++)
		for(int j = 0 ; j <27 ; j++)
    					MTrans[j][i] = M[i][j]; 
/*	System.out.println("Mtrans");
	for(int i = 0 ; i <27 ; i++){
		for(int j = 0 ; j <27 ; j++){
			System.out.print(MTrans[i][j]+"     ");
		}
		System.out.println();}*/

	
	double[][] t = new double[27][27];
	double[][] t2 = new double[27][27];
	
	for (int c=0;c<27;c++ )
		{
			for(int d=0;d<27;d++){
                        for(int k1=0;k1<27;k1++){
                        	t[c][d]=t[c][d]+MTrans[c][k1]*M[k1][d];
                        }
				}
		}
	
            for (int c=0;c<27;c++ ){
            	for(int d=0;d<27;d++){
                        for(int k1=0;k1<27;k1++)
                        {
                        	if(t[c][d]!=0)
                            {
                                t2[c][d]=(1.0/t[c][d]);
                            }else{
                                t2[c][d]=0;
                            }
                        }
            		}
            	}
            
	
	
	double[] in = new double[3*siz];
	double[] itn = new double[3*siz];
	double[] itn1 = new double[3*siz];
	int u=0,j=0,i=0; 
	for(i=0;i<imgwidth-1;i++){
		for( j=0;j<imgheight-1;j++){
		in[u++] = rval[i][j];
		in[u++] = gval[i][j];
		in[u++] = bval[i][j];
		}
		//u=u+3;
	}
	//System.out.println(in.length+" "+u);
	int count =0;
	for(int i1=0;i1<u;){
		double a[][] = new double[27][1];
		for(int y=0;y<a.length;y++){
			a[y][0] = in[i1++];
		}
		count++;
		inputt.add(a);
		
	}
	//System.out.println(count);
	/*double[][] ma =null;
	ma = inputt.get(0);
	for(int i1=0;i1<27;i1++){
		System.out.println(ma[i1][0]);
	}
	System.out.println();*/
	j=0;
	for(double[][] inputt1 : inputt){
		betainv.add(betat(MTrans,inputt.get(j)));
		j++;
	}
	j=0;
	for(double[][] betain1 : betainv){
		beta.add(betath(t2,betainv.get(j)));
		j++;
	}
	j=0;
	for(double[][] beta1 : beta){
		tex.add(texture(beta.get(j)));
		j++;
	}
	/*j=0;
	for(double[][] beta1 : beta){
		edg.add(horiedge(beta.get(j)));
		j++;
	}*/
	/*j=0;
	for(double[][] beta1 : beta){
		cob.add(veredg(edg.get(j),tex.get(j)));
		j++;
	}*/
	//System.out.println(j);
	j=0;
	for(double[][] tex1 : tex){
		invtex.add(betainverse(M,tex.get(j)));
		j++;
	}
	/*j=0;
	for(double[][] tex1 : tex){
		invedg.add(betainverse(M,edg.get(j)));
		j++;
	}*/
	
	/*	double[][] as =null;
		as = inv.get(0);
		for(int i1=0;i1<27;i1++){
			System.out.println(as[i1][0]);
		}*/
	j=0;
	int u1 =0;
	for(double[][] inv1:invtex){
		double[][] ase = null;
	    ase = invtex.get(j);
	    for(int e=0;e<27;e++){
	    	itn[u1] = ase[e][0];
	    	//System.out.print(itn[u1]+" ");
	    	u1++;
	    }
	   // System.out.println();
	    j++;
	}
	/*j=0; u1 =0;
	for(double[][] inv1:invedg){
		double[][] ase = null;
	    ase = invedg.get(j);
	    for(int e=0;e<27;e++){
	    	itn1[u1] = ase[e][0];
	    	//System.out.print(itn[u1]+" ");
	    	u1++;
	    }
	   // System.out.println();
	    j++;
	}*/
	
	//System.out.println(u1);
	BufferedImage img1 = new BufferedImage(imgwidth,imgheight,BufferedImage.TYPE_INT_RGB);
	int e=0,a=225;
	for(int i1=0;i1<imgheight;i1++){
		for(int j1=0;j1<imgwidth;j1++){
			int r = (int)(itn[e]);
			int g = (int)(itn[e+1]);
			int b = (int)(itn[e+2]);
			int p = (a<<24) | (r<<16) | (g<<8) | b;
			img1.setRGB(j1, i1, p);
			e=e+3;
		}
	}
    ImageIO.write(img1, "jpg", f);
	/*//System.out.println(u1);
	BufferedImage img2 = new BufferedImage(imgwidth,imgheight,BufferedImage.TYPE_INT_RGB);
	 e=0;a=225;
	for(int i1=0;i1<imgheight;i1++){
		for(int j1=0;j1<imgwidth;j1++){
			int r = (int)(itn1[e]);
			int g = (int)(itn1[e+1]);
			int b = (int)(itn1[e+2]);
			int p = (a<<24) | (r<<16) | (g<<8) | b;
			img2.setRGB(j1, i1, p);
			e=e+3;
		}
	}
	ImageIO.write(img2, "jpg", f1);*/
	//System.out.println(u1);
    
	}

}
