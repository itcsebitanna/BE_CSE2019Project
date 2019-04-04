package com.example.parking_vehicles;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import com.example.parking_vehicles.R.color;
import android.net.ParseException;
import android.os.Bundle;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.format.DateFormat;
import android.text.method.DateTimeKeyListener;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.Toast;
import java.text.SimpleDateFormat;  


public class BookCPark extends Activity {

	SQLiteDatabase myDb;
	String DB_NAME ="Parking.db";
	
	 private Button Cmd1;
	 private Button Cmd2;
	 private Button Cmd3;
	 private Button Cmd4;
	 private Button Cmd5;
	 private Button Cmd6;
	    
	 String UN;
	 String LID;
	 String LName;
	 String Descr;
	 String City;
 
	    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.book_cpark);
        
        Cmd1=(Button) findViewById(R.id.Cmd1);
        Cmd2=(Button) findViewById(R.id.Cmd2);
        Cmd3=(Button) findViewById(R.id.Cmd3);
        Cmd4=(Button) findViewById(R.id.Cmd4);
        Cmd5=(Button) findViewById(R.id.Cmd5);
        Cmd6=(Button) findViewById(R.id.Cmd6);
        
        
        Intent i = getIntent();
  		if( i.getStringExtra("UN")!=null){
  			UN = i.getStringExtra("UN");
  		}
  	  
        Intent i1 = getIntent();
  		if( i1.getStringExtra("LID")!=null){
  			LID = i1.getStringExtra("LID");
  		}
  		

        Intent i2 = getIntent();
  		if( i2.getStringExtra("LName")!=null){
  			LName = i2.getStringExtra("LName");
  		}
  		
        Intent i3 = getIntent();
  		if( i3.getStringExtra("Desc")!=null){
  			Descr = i3.getStringExtra("Desc");
  		}
  		
        Intent i4 = getIntent();
  		if( i4.getStringExtra("City")!=null){
  			City = i4.getStringExtra("City");
  		}
  		


		// Toast.makeText(BookCPark.this,"City" + City,Toast.LENGTH_LONG).show();
		 
 		
		 
        createTable();
        LoadData();        

        Cmd1.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	String alert="";
     			if(LName.toString().trim().length()<=0){
     				alert+="Lane Name Cannot be Empty\n";
     			}
     			if(Descr.toString().trim().length()<=0){
     				alert+="Description Cannot be Empty\n";
     			}
     			if(City.toString().trim().length()<=0){
     				alert+="City Cannot be Empty\n";
     			}
     			
     			Calendar c1 = Calendar.getInstance();
    			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    			String dte = df.format(c1.getTime());    			
    			String dt1 =new SimpleDateFormat("dd").format(c1.getTime());
    			String dt2 = new SimpleDateFormat("MMM").format(c1.getTime());
    			String dt3 =new SimpleDateFormat("yyyy").format(c1.getTime());    			
    			String FinDt = dt1+"/"+dt2+"/"+dt3;
    			
    			String dte1;
    					
			
    			
    			SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
     			Cursor cx=myDb.rawQuery("SELECT * FROM CPark WHERE City='" + City + "' And ParkNo=1 And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "'",null);
                if(cx.moveToNext()) {
        		   alert+="Already Parking Booked for Today. Try Tomorrow.\n";
                }
                
     			Cursor c=myDb.rawQuery("SELECT * FROM CPark WHERE City='" + City + "' And ParkNo=1 And UN='" + UN.toString() + "' And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "'",null);
                if(c.moveToNext()) {
        		   alert+="Already you Booked the same Parking today. Try Tomorrow.\n";
                	
                	
                	AlertDialog.Builder builder = new AlertDialog.Builder(BookCPark.this);

                    builder.setTitle("Confirm");
                    builder.setMessage("Already you Parked Car in this Lane. Do you want to Release that Booking? Press YES to Release");

                    builder.setPositiveButton("YES", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                        	Calendar c1 = Calendar.getInstance();
                			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                			String dte = df.format(c1.getTime());    			
                			String dt1 =new SimpleDateFormat("dd").format(c1.getTime());
                			String dt2 = new SimpleDateFormat("MMM").format(c1.getTime());
                			String dt3 =new SimpleDateFormat("yyyy").format(c1.getTime());    			
                			String FinDt = dt1+"/"+dt2+"/"+dt3;
                			
                        	SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
                    		String MySQL = "Delete From CPark WHERE City='" + City + "' And UN='" + UN.toString() + "' And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "' And ParkNo=1";
                    		myDb.execSQL(MySQL);
                    		LoadData();                       	    
                        }
                    });

                    builder.setNegativeButton("NO", new DialogInterface.OnClickListener() {

                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                   		   LoadData();
                        }
                    });

                    AlertDialog alert1 = builder.create();
                    alert1.show(); 
                	
                	
                	
                	
                 }

     			if(!alert.trim().equals("")){
     				Toast.makeText(BookCPark.this,""+alert,Toast.LENGTH_LONG).show();     
     	        }
     			else
     			{	
            	    Intent a=new Intent(BookCPark.this,PayCPark.class);
                    a.putExtra("LID", LID);
                    a.putExtra("LName", LName.toString());
                    a.putExtra("Desc", Descr.toString());
                    a.putExtra("UN", UN.toString());
                    a.putExtra("ParkNo", "1");
                    a.putExtra("City", City);
                    startActivity(a);
                    
     				LoadData();
     		    }
            }
           });
        


        Cmd2.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	String alert="";
     			if(LName.toString().trim().length()<=0){
     				alert+="Lane Name Cannot be Empty\n";
     			}
     			if(Descr.toString().trim().length()<=0){
     				alert+="Description Cannot be Empty\n";
     			}
     			
     			Calendar c1 = Calendar.getInstance();
    			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    			String dte = df.format(c1.getTime());    			
    			String dt1 =new SimpleDateFormat("dd").format(c1.getTime());
    			String dt2 = new SimpleDateFormat("MMM").format(c1.getTime());
    			String dt3 =new SimpleDateFormat("yyyy").format(c1.getTime());    			
    			String FinDt = dt1+"/"+dt2+"/"+dt3;
    			
    			String dte1;
    					
			
    			
    			SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
     			Cursor cx=myDb.rawQuery("SELECT * FROM CPark WHERE City='" + City + "' And ParkNo=2 And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "'",null);
                if(cx.moveToNext()) {
        		   alert+="Already Parking Booked for Today. Try Tomorrow.\n";
                }
                
     			Cursor c=myDb.rawQuery("SELECT * FROM CPark WHERE City='" + City + "' And ParkNo=2 And UN='" + UN.toString() + "' And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "'",null);
                if(c.moveToNext()) {
        		   alert+="Already you Booked the same Parking today. Try Tomorrow.\n";
                	
                	
                	AlertDialog.Builder builder = new AlertDialog.Builder(BookCPark.this);

                    builder.setTitle("Confirm");
                    builder.setMessage("Already you Parked Car in this Lane. Do you want to Release that Booking? Press YES to Release");

                    builder.setPositiveButton("YES", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                        	Calendar c1 = Calendar.getInstance();
                			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                			String dte = df.format(c1.getTime());    			
                			String dt1 =new SimpleDateFormat("dd").format(c1.getTime());
                			String dt2 = new SimpleDateFormat("MMM").format(c1.getTime());
                			String dt3 =new SimpleDateFormat("yyyy").format(c1.getTime());    			
                			String FinDt = dt1+"/"+dt2+"/"+dt3;
                			
                        	SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
                    		String MySQL = "Delete From CPark WHERE City='" + City + "' And UN='" + UN.toString() + "' And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "' And ParkNo=2";
                    		myDb.execSQL(MySQL);
                    		LoadData();                       	    
                        }
                    });

                    builder.setNegativeButton("NO", new DialogInterface.OnClickListener() {

                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                   		   LoadData();
                        }
                    });

                    AlertDialog alert1 = builder.create();
                    alert1.show(); 
                	
                	
                	
                	
                 }

     			if(!alert.trim().equals("")){
     				Toast.makeText(BookCPark.this,""+alert,Toast.LENGTH_LONG).show();     
     	        }
     			else
     			{	
            	    Intent a=new Intent(BookCPark.this,PayCPark.class);
                    a.putExtra("LID", LID);
                    a.putExtra("LName", LName.toString());
                    a.putExtra("Desc", Descr.toString());
                    a.putExtra("UN", UN.toString());
                    a.putExtra("ParkNo", "2");
                    a.putExtra("City", City);
                    startActivity(a);
                    
     				LoadData();
     		    }
            }
           });
        

        Cmd3.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	String alert="";
     			if(LName.toString().trim().length()<=0){
     				alert+="Lane Name Cannot be Empty\n";
     			}
     			if(Descr.toString().trim().length()<=0){
     				alert+="Description Cannot be Empty\n";
     			}
     			
     			Calendar c1 = Calendar.getInstance();
    			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    			String dte = df.format(c1.getTime());    			
    			String dt1 =new SimpleDateFormat("dd").format(c1.getTime());
    			String dt2 = new SimpleDateFormat("MMM").format(c1.getTime());
    			String dt3 =new SimpleDateFormat("yyyy").format(c1.getTime());    			
    			String FinDt = dt1+"/"+dt2+"/"+dt3;
    			
    			String dte1;
    					
			
    			
    			SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
     			Cursor cx=myDb.rawQuery("SELECT * FROM CPark WHERE City='" + City + "' And ParkNo=3 And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "'",null);
                if(cx.moveToNext()) {
        		   alert+="Already Parking Booked for Today. Try Tomorrow.\n";
                }
                
     			Cursor c=myDb.rawQuery("SELECT * FROM CPark WHERE City='" + City + "' And ParkNo=3 And UN='" + UN.toString() + "' And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "'",null);
                if(c.moveToNext()) {
        		   alert+="Already you Booked the same Parking today. Try Tomorrow.\n";
                	
                	
                	AlertDialog.Builder builder = new AlertDialog.Builder(BookCPark.this);

                    builder.setTitle("Confirm");
                    builder.setMessage("Already you Parked Car in this Lane. Do you want to Release that Booking? Press YES to Release");

                    builder.setPositiveButton("YES", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                        	Calendar c1 = Calendar.getInstance();
                			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                			String dte = df.format(c1.getTime());    			
                			String dt1 =new SimpleDateFormat("dd").format(c1.getTime());
                			String dt2 = new SimpleDateFormat("MMM").format(c1.getTime());
                			String dt3 =new SimpleDateFormat("yyyy").format(c1.getTime());    			
                			String FinDt = dt1+"/"+dt2+"/"+dt3;
                			
                        	SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
                    		String MySQL = "Delete From CPark WHERE City='" + City + "' And UN='" + UN.toString() + "' And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "' And ParkNo=3";
                    		myDb.execSQL(MySQL);
                    		LoadData();                       	    
                        }
                    });

                    builder.setNegativeButton("NO", new DialogInterface.OnClickListener() {

                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                   		   LoadData();
                        }
                    });

                    AlertDialog alert1 = builder.create();
                    alert1.show(); 
                	
                	
                	
                	
                 }

     			if(!alert.trim().equals("")){
     				Toast.makeText(BookCPark.this,""+alert,Toast.LENGTH_LONG).show();     
     	        }
     			else
     			{	
            	    Intent a=new Intent(BookCPark.this,PayCPark.class);
                    a.putExtra("LID", LID);
                    a.putExtra("LName", LName.toString());
                    a.putExtra("Desc", Descr.toString());
                    a.putExtra("UN", UN.toString());
                    a.putExtra("ParkNo", "3");
                    a.putExtra("City", City);
                    startActivity(a);
                    
     				LoadData();
     		    }
            }
           });


        Cmd4.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	String alert="";
     			if(LName.toString().trim().length()<=0){
     				alert+="Lane Name Cannot be Empty\n";
     			}
     			if(Descr.toString().trim().length()<=0){
     				alert+="Description Cannot be Empty\n";
     			}
     			
     			Calendar c1 = Calendar.getInstance();
    			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    			String dte = df.format(c1.getTime());    			
    			String dt1 =new SimpleDateFormat("dd").format(c1.getTime());
    			String dt2 = new SimpleDateFormat("MMM").format(c1.getTime());
    			String dt3 =new SimpleDateFormat("yyyy").format(c1.getTime());    			
    			String FinDt = dt1+"/"+dt2+"/"+dt3;
    			
    			String dte1;
    					
			
    			
    			SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
     			Cursor cx=myDb.rawQuery("SELECT * FROM CPark WHERE City='" + City + "' And ParkNo=4 And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "'",null);
                if(cx.moveToNext()) {
        		   alert+="Already Parking Booked for Today. Try Tomorrow.\n";
                }
                
     			Cursor c=myDb.rawQuery("SELECT * FROM CPark WHERE City='" + City + "' And ParkNo=4 And UN='" + UN.toString() + "' And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "'",null);
                if(c.moveToNext()) {
        		   alert+="Already you Booked the same Parking today. Try Tomorrow.\n";
                	
                	
                	AlertDialog.Builder builder = new AlertDialog.Builder(BookCPark.this);

                    builder.setTitle("Confirm");
                    builder.setMessage("Already you Parked Car in this Lane. Do you want to Release that Booking? Press YES to Release");

                    builder.setPositiveButton("YES", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                        	Calendar c1 = Calendar.getInstance();
                			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                			String dte = df.format(c1.getTime());    			
                			String dt1 =new SimpleDateFormat("dd").format(c1.getTime());
                			String dt2 = new SimpleDateFormat("MMM").format(c1.getTime());
                			String dt3 =new SimpleDateFormat("yyyy").format(c1.getTime());    			
                			String FinDt = dt1+"/"+dt2+"/"+dt3;
                			
                        	SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
                    		String MySQL = "Delete From CPark WHERE City='" + City + "' And UN='" + UN.toString() + "' And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "' And ParkNo=4";
                    		myDb.execSQL(MySQL);
                    		LoadData();                       	    
                        }
                    });

                    builder.setNegativeButton("NO", new DialogInterface.OnClickListener() {

                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                   		   LoadData();
                        }
                    });

                    AlertDialog alert1 = builder.create();
                    alert1.show(); 
                	
                	
                	
                	
                 }

     			if(!alert.trim().equals("")){
     				Toast.makeText(BookCPark.this,""+alert,Toast.LENGTH_LONG).show();     
     	        }
     			else
     			{	
            	    Intent a=new Intent(BookCPark.this,PayCPark.class);
                    a.putExtra("LID", LID);
                    a.putExtra("LName", LName.toString());
                    a.putExtra("Desc", Descr.toString());
                    a.putExtra("UN", UN.toString());
                    a.putExtra("ParkNo", "4");
                    a.putExtra("City", City);
                    startActivity(a);
                    
     				LoadData();
     		    }
            }
           });
        

        Cmd5.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	String alert="";
     			if(LName.toString().trim().length()<=0){
     				alert+="Lane Name Cannot be Empty\n";
     			}
     			if(Descr.toString().trim().length()<=0){
     				alert+="Description Cannot be Empty\n";
     			}
     			
     			Calendar c1 = Calendar.getInstance();
    			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    			String dte = df.format(c1.getTime());    			
    			String dt1 =new SimpleDateFormat("dd").format(c1.getTime());
    			String dt2 = new SimpleDateFormat("MMM").format(c1.getTime());
    			String dt3 =new SimpleDateFormat("yyyy").format(c1.getTime());    			
    			String FinDt = dt1+"/"+dt2+"/"+dt3;
    			
    			String dte1;
    					
			
    			
    			SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
     			Cursor cx=myDb.rawQuery("SELECT * FROM CPark WHERE City='" + City + "' And ParkNo=5 And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "'",null);
                if(cx.moveToNext()) {
        		   alert+="Already Parking Booked for Today. Try Tomorrow.\n";
                }
                
     			Cursor c=myDb.rawQuery("SELECT * FROM CPark WHERE City='" + City + "' And ParkNo=5 And UN='" + UN.toString() + "' And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "'",null);
                if(c.moveToNext()) {
        		   alert+="Already you Booked the same Parking today. Try Tomorrow.\n";
                	
                	
                	AlertDialog.Builder builder = new AlertDialog.Builder(BookCPark.this);

                    builder.setTitle("Confirm");
                    builder.setMessage("Already you Parked Car in this Lane. Do you want to Release that Booking? Press YES to Release");

                    builder.setPositiveButton("YES", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                        	Calendar c1 = Calendar.getInstance();
                			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                			String dte = df.format(c1.getTime());    			
                			String dt1 =new SimpleDateFormat("dd").format(c1.getTime());
                			String dt2 = new SimpleDateFormat("MMM").format(c1.getTime());
                			String dt3 =new SimpleDateFormat("yyyy").format(c1.getTime());    			
                			String FinDt = dt1+"/"+dt2+"/"+dt3;
                			
                        	SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
                    		String MySQL = "Delete From CPark WHERE City='" + City + "' And UN='" + UN.toString() + "' And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "' And ParkNo=5";
                    		myDb.execSQL(MySQL);
                    		LoadData();                       	    
                        }
                    });

                    builder.setNegativeButton("NO", new DialogInterface.OnClickListener() {

                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                   		   LoadData();
                        }
                    });

                    AlertDialog alert1 = builder.create();
                    alert1.show(); 
                	
                	
                	
                	
                 }

     			if(!alert.trim().equals("")){
     				Toast.makeText(BookCPark.this,""+alert,Toast.LENGTH_LONG).show();     
     	        }
     			else
     			{	
            	    Intent a=new Intent(BookCPark.this,PayCPark.class);
                    a.putExtra("LID", LID);
                    a.putExtra("LName", LName.toString());
                    a.putExtra("Desc", Descr.toString());
                    a.putExtra("UN", UN.toString());
                    a.putExtra("ParkNo", "5");
                    a.putExtra("City", City);
                    startActivity(a);
                    
     				LoadData();
     		    }
            }
           });
        

        Cmd6.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	String alert="";
     			if(LName.toString().trim().length()<=0){
     				alert+="Lane Name Cannot be Empty\n";
     			}
     			if(Descr.toString().trim().length()<=0){
     				alert+="Description Cannot be Empty\n";
     			}
     			
     			Calendar c1 = Calendar.getInstance();
    			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    			String dte = df.format(c1.getTime());    			
    			String dt1 =new SimpleDateFormat("dd").format(c1.getTime());
    			String dt2 = new SimpleDateFormat("MMM").format(c1.getTime());
    			String dt3 =new SimpleDateFormat("yyyy").format(c1.getTime());    			
    			String FinDt = dt1+"/"+dt2+"/"+dt3;
    			
    			String dte1;
    					
			
    			
    			SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
     			Cursor cx=myDb.rawQuery("SELECT * FROM CPark WHERE City='" + City + "' And ParkNo=6 And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "'",null);
                if(cx.moveToNext()) {
        		   alert+="Already Parking Booked for Today. Try Tomorrow.\n";
                }
                
     			Cursor c=myDb.rawQuery("SELECT * FROM CPark WHERE City='" + City + "' And ParkNo=6 And UN='" + UN.toString() + "' And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "'",null);
                if(c.moveToNext()) {
        		   alert+="Already you Booked the same Parking today. Try Tomorrow.\n";
                	
                	
                	AlertDialog.Builder builder = new AlertDialog.Builder(BookCPark.this);

                    builder.setTitle("Confirm");
                    builder.setMessage("Already you Parked Car in this Lane. Do you want to Release that Booking? Press YES to Release");

                    builder.setPositiveButton("YES", new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialog, int which) {
                        	Calendar c1 = Calendar.getInstance();
                			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
                			String dte = df.format(c1.getTime());    			
                			String dt1 =new SimpleDateFormat("dd").format(c1.getTime());
                			String dt2 = new SimpleDateFormat("MMM").format(c1.getTime());
                			String dt3 =new SimpleDateFormat("yyyy").format(c1.getTime());    			
                			String FinDt = dt1+"/"+dt2+"/"+dt3;
                			
                        	SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
                    		String MySQL = "Delete From CPark WHERE City='" + City + "' And UN='" + UN.toString() + "' And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName.toString() + "' And ParkNo=6";
                    		myDb.execSQL(MySQL);
                    		LoadData();                       	    
                        }
                    });

                    builder.setNegativeButton("NO", new DialogInterface.OnClickListener() {

                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                   		   LoadData();
                        }
                    });

                    AlertDialog alert1 = builder.create();
                    alert1.show(); 
                	
                	
                	
                	
                 }

     			if(!alert.trim().equals("")){
     				Toast.makeText(BookCPark.this,""+alert,Toast.LENGTH_LONG).show();     
     	        }
     			else
     			{	
            	    Intent a=new Intent(BookCPark.this,PayCPark.class);
                    a.putExtra("LID", LID);
                    a.putExtra("LName", LName.toString());
                    a.putExtra("Desc", Descr.toString());
                    a.putExtra("UN", UN.toString());
                    a.putExtra("ParkNo", "6");
                    a.putExtra("City", City);
                    startActivity(a);
                    
     				LoadData();
     		    }
            }
           });
        
    }
 

	int ParkNo=0;
    private void LoadData()
    {   
       	myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
    	
    	Calendar c1 = Calendar.getInstance();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String dte = df.format(c1.getTime());    			
		String dt1 =new SimpleDateFormat("dd").format(c1.getTime());
		String dt2 = new SimpleDateFormat("MMM").format(c1.getTime());
		String dt3 =new SimpleDateFormat("yyyy").format(c1.getTime());    			
		String FinDt = dt1+"/"+dt2+"/"+dt3;
		
        Cursor c = myDb.rawQuery("SELECT * From CPark Where City='" + City + "' And CAST(DT AS Date)=CAST('" + FinDt + "' AS Date) And LName='" + LName + "'",null);
        while(c.moveToNext())
        {
        	
        	ParkNo=Integer.parseInt(c.getString(c.getColumnIndex("ParkNo")));
        	
		//	Toast.makeText(BookCPark.this,"ParkNo   "+ParkNo,Toast.LENGTH_LONG).show();     

				
        	if(ParkNo==1)
        	{
            	Cmd1.setBackgroundColor(color.deeppink);
            	Cmd1.setTextColor(color.wheat);            	
        	}
        	if(ParkNo==2)
        	{
            	Cmd2.setBackgroundColor(color.deeppink);
            	Cmd2.setTextColor(color.wheat);
        	}
        	if(ParkNo==3)
        	{
            	Cmd3.setBackgroundColor(color.deeppink);
            	Cmd3.setTextColor(color.wheat);
        	}
        	if(ParkNo==4)
        	{
            	Cmd4.setBackgroundColor(color.deeppink);
            	Cmd4.setTextColor(color.wheat);
        	}
        	if(ParkNo==5)
        	{
            	Cmd5.setBackgroundColor(color.deeppink);
            	Cmd5.setTextColor(color.wheat);
        	}
        	if(ParkNo==6)
        	{
            	Cmd6.setBackgroundColor(color.deeppink);
            	Cmd6.setTextColor(color.wheat);
        	}
      }
}

void createTable(){
    SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
    String MySQL = "create table if not exists CPark(ParkID Integer not null,LID Integer not null,LName Text not null,Description TEXT not null,UN TEXT not null,ParkNo Integer not null,City Text not null,DT Datetime not null);";
    myDb.execSQL(MySQL);
    myDb.close();
}
}
