/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package networknet;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nithyavasanth
 */
public class netnerual extends javax.swing.JFrame {
double[][] xPredicted = new double[1][2] ;
double[] out;
double  W1[][] = { {Math.random(),Math.random(),Math.random(),Math.random()},{Math.random(),Math.random(),Math.random(),Math.random()}};
double W2[] = {Math.random(),Math.random(),Math.random(),Math.random()};
double[][] z2;
double[] o;
    /**
     * Creates new form netnerual
     */
  public netnerual() {
  initComponents();
  int inputSize = 2;
  int outputSize = 1;
  int hiddenSize = 4;
  }
double[] forward(double[][] a) {  //forward ................
double[][] z = multiplyMatrices(a, W1);
z2 = sigmoid(z); 
double[] z3 = multiplyMatrices(z2,W2);   
o = sigmoid2(z3);//final activation function 
return o;
}
void backward(double[][] a,double[] b,double[] o){
double[] o_error = minus(b,o);
double[] sprime = sigmoidPrime(o);
double[] o_delta = delta(o_error,sprime);
double[][] z2_error = multiplyMatrices(o_delta,W2);
double[][] sprime2 = sigmoidPrime2(z2);
double[][] z2_delta = multiplyMatrices(z2_error,sprime2);
double xT[][]=new double[2][4];
for(int i=0;i<2;i++){    
for(int j=0;j<4;j++){    
 xT[i][j]=a[j][i];  
  }  }  
 double[][] weight=  multiplyMatrices(xT,z2_delta);
 for(int i = 0; i < 2; i++) {
 for (int j = 0; j < 4; j++) {
 W1[i][j] += weight[i][j];   
 }}
double z2T[][]=new double[4][4];  
for(int i=0;i<4;i++){  
for(int j=0;j<4;j++){    
z2T[i][j]=z2[j][i];  
}  }
double[] weight2 = multiplyMatrices(z2T,o_delta);
for(int i = 0; i < 4; i++) {
W2[i] += weight2[i];
}}
void train(double[][] a,double[] b)
{
o = forward(a);	
backward(a,b,o);
}
double[] predict(double[][] xpre) {
System.out.println("Predicted data based on trained weights:" );
System.out. println("Input (scaled):") ;
for(int j=0;j<2;j++) {
System.out. println(xpre[0][j]);   
}
System.out. println("Output") ;
out = forward(xpre);
System.out. println(out[0]);
return out;
}
double[][] sigmoidPrime2(double[][] val) {
int m1 = val.length;
int n1 = val[0].length;
double[][] sprime2 = new double[m1][n1];
for(int i = 0; i < m1; i++) {
for(int j = 0; j < n1; j++) {
sprime2[i][j] = z2[i][j] * (1 - val[i][j]);
}}
return sprime2;
}
public static double[][] multiplyMatrices(double[] a, double[] b) {
int m1 = a.length;
int m2 = b.length;
double[][] z2_error = new double[m1][m2];
for(int i = 0; i < m1; i++) {
for (int j = 0; j < m2; j++) {
z2_error[i][j]  = a[i] * b[j];
}}
return z2_error;         
}   
double[] delta(double[] e,double[] sprime) {
    	int m1= e.length;
		double[] o_delta = new double[m1];
		for(int i = 0; i < m1; i++) {
			o_delta[i] =e[i] * sprime[i];
			}
		return o_delta;
	}
    double[] sigmoidPrime(double[] o) {
    	int m1= o.length;
		double[] sprime = new double[m1];
		 for(int i = 0; i < m1; i++) {
			sprime[i] = o[i] * (1 - o[i]);
		 }
		 return sprime;
	}
    double[] minus(double[] firstvalue,double[] secondvalue )   {
    	int m1= firstvalue.length;
    	
  	  double[] error = new double[m1];
  	 
  	  for(int i = 0; i < m1; i++) {
           error[i] = firstvalue[i] - secondvalue[i];  
           }
  	  return error;
    }
  
public static double[][] multiplyMatrices(double[][] a, double[][] b) {
	int m1 = a.length;
    int n1 = a[0].length;
    int m2 = b.length;
    int n2 = b[0].length;
    if (n1 != m2) throw new RuntimeException("Illegal matrix dimensions.");
    double[][] z = new double[m1][n2];
    for (int i = 0; i < m1; i++)
        for (int j = 0; j < n2; j++)
            for (int k = 0; k < n1; k++)
                z[i][j] += a[i][k] * b[k][j];
        return z;
}
public static double[] multiplyMatrices(double[][] a, double[] x) {
	 int m = a.length;
     int n = a[0].length;
     if (x.length != n) throw new RuntimeException("Illegal matrix dimensions.");
     double[] z = new double[m];
     for (int i = 0; i < m; i++)
         for (int j = 0; j < n; j++)
             z[i] += a[i][j] * x[j];
           return z;            
}          
          

   public static   double[][] sigmoid(double[][] s){
	   int m1 = s.length;
	    int n1 = s[0].length;
      double[][] z2 = new double[m1][n1];
       for(int i = 0; i < m1; i++) {
        for (int j = 0; j < n1; j++) {
          z2[i][j] = 1 / (1 + Math.exp(-s[i][j]));
          }}
        	return z2;
}
   public static   double[] sigmoid2(double[] s){
	   int m1 = s.length;
         double[] o1 = new double[m1];
          for(int i = 0; i < m1; i++) {
           
             o1[i] = 1 / (1 + Math.exp(-s[i]));
             }
           	return o1;
           }
  
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        button1 = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        text1 = new javax.swing.JTextField();
        text2 = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        button = new javax.swing.JButton();
        jTextField1 = new javax.swing.JTextField();
        jButton2 = new javax.swing.JButton();
        outtext2 = new javax.swing.JTextField();
        jButton3 = new javax.swing.JButton();
        outtext3 = new javax.swing.JTextField();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jLabel7 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(0, 0, 0));
        setForeground(new java.awt.Color(255, 0, 255));

        jPanel1.setBackground(new java.awt.Color(204, 255, 204));

        button1.setBackground(new java.awt.Color(0, 0, 102));
        button1.setFont(new java.awt.Font("Arial", 1, 24)); // NOI18N
        button1.setForeground(new java.awt.Color(255, 255, 102));
        button1.setText("IMPLEMENTING MULTILAYER NEURAL NETWORKS THROUGH BACKPROPOGATION");
        button1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                button1ActionPerformed(evt);
            }
        });

        jLabel2.setBackground(new java.awt.Color(0, 0, 102));
        jLabel2.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel2.setForeground(new java.awt.Color(51, 0, 0));
        jLabel2.setText("SepalLengthCm");

        jLabel1.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(102, 0, 51));
        jLabel1.setText("SepalWidthCm");

        text1.setFont(new java.awt.Font("Arial", 1, 20)); // NOI18N
        text1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                text1ActionPerformed(evt);
            }
        });

        text2.setFont(new java.awt.Font("Arial", 1, 20)); // NOI18N
        text2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                text2ActionPerformed(evt);
            }
        });

        jLabel5.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jLabel5.setForeground(new java.awt.Color(102, 0, 0));
        jLabel5.setText(" ITERATION");

        jLabel6.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(102, 0, 0));
        jLabel6.setText(" PetalLengthCm");

        button.setBackground(new java.awt.Color(0, 255, 0));
        button.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        button.setForeground(new java.awt.Color(255, 255, 255));
        button.setText("1");
        button.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                buttonActionPerformed(evt);
            }
        });

        jTextField1.setFont(new java.awt.Font("Arial", 1, 18)); // NOI18N

        jButton2.setBackground(new java.awt.Color(0, 153, 0));
        jButton2.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jButton2.setForeground(new java.awt.Color(255, 255, 255));
        jButton2.setText("10");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        outtext2.setFont(new java.awt.Font("Arial", 1, 18)); // NOI18N

        jButton3.setBackground(new java.awt.Color(0, 102, 0));
        jButton3.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        jButton3.setForeground(new java.awt.Color(255, 255, 255));
        jButton3.setText("100");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        outtext3.setFont(new java.awt.Font("Arial", 1, 18)); // NOI18N

        jButton1.setText("Next");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jLabel7.setIcon(new javax.swing.ImageIcon(getClass().getResource("/networknet/4.png"))); // NOI18N

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addComponent(button1)
                .addContainerGap(16, Short.MAX_VALUE))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(23, 23, 23)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 57, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(button, javax.swing.GroupLayout.PREFERRED_SIZE, 57, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(jButton3))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 35, Short.MAX_VALUE)
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jTextField1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 264, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(outtext2, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 264, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(outtext3, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 264, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jLabel2)
                                            .addGroup(jPanel1Layout.createSequentialGroup()
                                                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 95, javax.swing.GroupLayout.PREFERRED_SIZE)
                                                .addGap(91, 91, 91)
                                                .addComponent(jLabel6)))
                                        .addGap(16, 16, 16))))
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(44, 44, 44)
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(jLabel1)
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addComponent(text1, javax.swing.GroupLayout.PREFERRED_SIZE, 84, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(114, 114, 114)
                                        .addComponent(text2, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                        .addGap(44, 44, 44))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(jButton1)
                        .addGap(71, 71, 71)))
                .addComponent(jLabel4)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 545, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jLabel3)
                .addGap(23, 23, 23))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(button1, javax.swing.GroupLayout.PREFERRED_SIZE, 59, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGap(7, 7, 7)
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(text1, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(text2, javax.swing.GroupLayout.PREFERRED_SIZE, 48, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGap(18, 18, 18)
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(jLabel6))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(jTextField1, javax.swing.GroupLayout.PREFERRED_SIZE, 51, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addComponent(button))
                                        .addGap(25, 25, 25)
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(jButton2)
                                            .addComponent(outtext2, javax.swing.GroupLayout.PREFERRED_SIZE, 47, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addGap(31, 31, 31)
                                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                            .addComponent(jButton3)
                                            .addComponent(outtext3, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(jButton1))
                                    .addGroup(jPanel1Layout.createSequentialGroup()
                                        .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 379, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(0, 13, Short.MAX_VALUE)))
                                .addContainerGap())
                            .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 373, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap())))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(0, 12, Short.MAX_VALUE)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(0, 13, Short.MAX_VALUE)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void text1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_text1ActionPerformed
        

       
      
    }//GEN-LAST:event_text1ActionPerformed

    private void buttonActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_buttonActionPerformed
      netnerual nn = new  netnerual();
		int i,j;
                
	    double[][] X = {{5.1,3.5}, {4.9, 3.0}, {4.7, 3.2}, {4.6, 3.1}};
            System.out.println(X[1][1]);
          
	     String val1;
             //int i,j;
        val1 = text1. getText();
          String val2;
         val2 = text2.getText();
         nn.read();
          xPredicted[0][1]= Double.parseDouble(val2);
       
       xPredicted[0][0]= Double.valueOf(val1);
	    
		double max = X[0][0];
		double max1 = X[0][1];
		double max3 = xPredicted[0][0];
		
		double[] y = {1.4,1.4,1.3,1.5};
		for( i=0; i<4;i++) {
			if(X[i][0] > max) {
				max = X[i][0];
				}
			if(X[i][1]>max1) {
				max1 = X[i][1];
			}
		}
		for(i=0;i<4;i++) {
			y[i] = y[i]/100;
			X[i][0] = X[i][0]/max;
			X[i][1] = X[i][1]/max1;
		}
		for(i=0;i<2;i++) {
			if(xPredicted[0][i] >max3) {
				max3 = xPredicted[0][i];
			}
		}
		for(i=0;i<2;i++) {
			xPredicted[0][i] = xPredicted[0][i]/max3;
		}
		for(int k=0;k<2;k++) {
			System.out.println("Iteraction"+k);
		System.out.println("Input (scaled)");
		for(i=0;i<4;i++) {
			for(j=0;j<2;j++) {
			System.out.println(X[i][j]);
			}
		}
		System.out.println("===================================");
		System.out.println("Actual Output);");
		for(i=0;i<4;i++) {
			System.out.println(y[i]);
		}
		double[] predict = nn.forward(X);
		System.out.println("====================================");
		System.out.println("Predicted Output:");
		for(i=0;i<4;i++) {
			System.out.println(predict[i]);
			}
		
		nn.backward(X,y,predict);
		nn.train(X,y);
		
		
		}
		double[] data=nn.predict(xPredicted);
             
                String output = String.valueOf(data[0]*10);
                //return output;
         jTextField1.setText(output);
      
        
    }//GEN-LAST:event_buttonActionPerformed

    private void text2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_text2ActionPerformed
      
    }//GEN-LAST:event_text2ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
           netnerual nn = new  netnerual();
		int i,j;
	    double[][] X = {{5.1,3.5}, {4.9, 3.0}, {4.7, 3.2}, {4.6, 3.1}};
	     String val1;
             //int i,j;
        val1 = text1. getText();
          String val2;
         val2 = text2.getText();
         nn.read();
          xPredicted[0][1]= Double.parseDouble(val2);
       
       xPredicted[0][0]= Double.valueOf(val1);
	    
		double max = X[0][0];
		double max1 = X[0][1];
		double max3 = xPredicted[0][0];
		
		double[] y = {1.4,1.4,1.3,1.5};
		for( i=0; i<4;i++) {
			if(X[i][0] > max) {
				max = X[i][0];
				}
			if(X[i][1]>max1) {
				max1 = X[i][1];
			}
		}
		for(i=0;i<4;i++) {
			y[i] = y[i]/100;
			X[i][0] = X[i][0]/max;
			X[i][1] = X[i][1]/max1;
		}
		for(i=0;i<2;i++) {
			if(xPredicted[0][i] >max3) {
				max3 = xPredicted[0][i];
			}
		}
		for(i=0;i<2;i++) {
			xPredicted[0][i] = xPredicted[0][i]/max3;
		}
		for(int k=0;k<10;k++) {
			System.out.println("Iteraction"+k);
		System.out.println("Input (scaled)");
		for(i=0;i<4;i++) {
			for(j=0;j<2;j++) {
			System.out.println(X[i][j]);
			}
		}
		System.out.println("===================================");
		System.out.println("Actual Output);");
		for(i=0;i<4;i++) {
			System.out.println(y[i]);
		}
		double[] predict = nn.forward(X);
		System.out.println("====================================");
		System.out.println("Predicted Output:");
		for(i=0;i<2;i++) {
			System.out.println(predict[i]);
			}
		
		nn.backward(X,y,predict);
		nn.train(X,y);
		
		
		}
		double[] data=nn.predict(xPredicted);
             
                String output = String.valueOf(data[0]*10);
                //return output;
        // jTextField1.setText(nvalue);
               outtext2.setText(output);
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
 
        String val1;
             //int i,j;
        val1 = text1. getText();
          String val2;
         val2 = text2.getText();
        netnerual nn = new  netnerual();
		int i,j;
                nn.read();
	    double[][] X = {{5.1,3.5}, {4.9, 3.0}, {4.7, 3.2}, {4.6, 3.1}};
	    
          xPredicted[0][1]= Double.parseDouble(val2);
       
       xPredicted[0][0]= Double.valueOf(val1);
	    
		double max = X[0][0];
		double max1 = X[0][1];
		double max3 = xPredicted[0][0];
		
		double[] y = {1.4,1.4,1.3,1.5};
		for( i=0; i<4;i++) {
			if(X[i][0] > max) {
				max = X[i][0];
				}
			if(X[i][1]>max1) {
				max1 = X[i][1];
			}
		}
		for(i=0;i<4;i++) {
			y[i] = y[i]/100;
			X[i][0] = X[i][0]/max;
			X[i][1] = X[i][1]/max1;
		}
		for(i=0;i<2;i++) {
			if(xPredicted[0][i] >max3) {
				max3 = xPredicted[0][i];
			}
		}
		for(i=0;i<2;i++) {
			xPredicted[0][i] = xPredicted[0][i]/max3;
		}
		for(int k=0;k<3;k++) {
			System.out.println("Iteraction"+k);
		System.out.println("Input (scaled)");
		for(i=0;i<4;i++) {
			for(j=0;j<2;j++) {
			System.out.println(X[i][j]);
			}
		}
		System.out.println("===================================");
		System.out.println("Actual Output);");
		for(i=0;i<4;i++) {
			System.out.println(y[i]);
		}
		double[] predict = nn.forward(X);
		System.out.println("=================================== =");
		System.out.println("Predicted Output:");
		for(i=0;i<4;i++) {
			System.out.println(predict[i]);
			}
		
		nn.backward(X,y,predict);
                
                
                
		nn.train(X,y);
		
		
		}
		double[] data=nn.predict(xPredicted);
             
                String output = String.valueOf(data[0]*10);
               // return output;
    //     jTextField1.setText(nvalue);
               outtext3.setText(output);        // TODO add your handling code here:
    }//GEN-LAST:event_jButton3ActionPerformed

    private void button1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_button1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_button1ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
       new frame3().setVisible(true);
        this.setVisible(false);
        
    }//GEN-LAST:event_jButton1ActionPerformed
      void  read(){
            String strFile = "C:\\Users\\nithyavasanth\\Documents\\NetBeansProjects\\workspace\\iris.csv";
    try {
        BufferedReader br = new BufferedReader(new FileReader(strFile));
          String lines;
                try {
                    // String token;
                    while ((lines = br.readLine()) != null) {
                        // use comma as separator
                        
                        String[] cols = lines.split(",");
                    }               } catch (IOException ex) {
                    Logger.getLogger(netnerual.class.getName()).log(Level.SEVERE, null, ex);
                }
    } catch (FileNotFoundException ex) {
        Logger.getLogger(netnerual.class.getName()).log(Level.SEVERE, null, ex);
    }
       }  
    
    
    String ready(int netvalue){
             System.out.println("netvalue"+netvalue);
         netnerual nn = new  netnerual();
		int i,j;
                double[][] X = {{5.1,3.5}, {4.9, 3.0}, {4.7, 3.2}, {4.6, 3.1}};
                String val1;
            
        val1 = "4.8";
          String val2;
         val2 = "3.4";
          xPredicted[0][1]= Double.parseDouble(val2);
       
       xPredicted[0][0]= Double.valueOf(val1);
	    
		double max = X[0][0];
		double max1 = X[0][1];
		double max3 = xPredicted[0][0];
		
		double[] y = {1.4,1.4,1.3,1.5};
		for( i=0; i<4;i++) {
			if(X[i][0] > max) {
				max = X[i][0];
				}
			if(X[i][1]>max1) {
				max1 = X[i][1];
			}
		}
		for(i=0;i<4;i++) {
			y[i] = y[i]/100;
			X[i][0] = X[i][0]/max;
			X[i][1] = X[i][1]/max1;
		}
		for(i=0;i<2;i++) {
			if(xPredicted[0][i] >max3) {
				max3 = xPredicted[0][i];
			}
		}
		for(i=0;i<2;i++) {
			xPredicted[0][i] = xPredicted[0][i]/max3;
		}
		for(int k=0;k<netvalue;k++) {
			System.out.println("Iteraction"+k);
		System.out.println("Input (scaled)");
		for(i=0;i<4;i++) {
			for(j=0;j<2;j++) {
			System.out.println(X[i][j]);
			}
		}
		System.out.println("===================================");
		System.out.println("Actual Output);");
		for(i=0;i<4;i++) {
			System.out.println(y[i]);
		}
		double[] predict = nn.forward(X);
		System.out.println("====================================");
		System.out.println("Predicted Output:");
		for(i=0;i<4;i++) {
			System.out.println(predict[i]);
			}
		
		nn.backward(X,y,predict);
		nn.train(X,y);
		
		
		}
		double[] data=nn.predict(xPredicted);
             
                String output = String.valueOf(data[0]*10);
                return output;
             
   }
    /**
     * @param args the command line arguments
     */
   

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton button;
    private javax.swing.JButton button1;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField jTextField1;
    private javax.swing.JTextField outtext2;
    private javax.swing.JTextField outtext3;
    public javax.swing.JTextField text1;
    private javax.swing.JTextField text2;
    // End of variables declaration//GEN-END:variables
}
