package com.example.parking_vehicles;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import android.os.Bundle;
import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.EventLogTags.Description;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class PayBPark extends Activity {
 
		SQLiteDatabase myDb;
		String DB_NAME ="Parking.db";
		

		private TextView CNO;
		private TextView CName;
		private TextView CVV;
	    
		private Button Submit;
		private Button Back; 

		String CNOs="";
		String CNames="";
		String CVVs="";
		
		int BookID;
		String LID;
		String UN;
		String LName;
		String Descr;
		String ParkNo;
		String City;
		

        String alert="";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.bookcpark_pay);
        
        CNO=(TextView) findViewById(R.id.TxtCardNoBP);
        CName=(TextView) findViewById(R.id.TxtCardNameBP);
        CVV=(TextView) findViewById(R.id.TxtCVVBP);
        Submit=(Button) findViewById(R.id.CmdSubBP);
        Back=(Button) findViewById(R.id.CmdBackBP);

        createTable();
        
        Intent i = getIntent();
  		if( i.getStringExtra("UN")!=null){
  			UN = i.getStringExtra("UN");
  		}

        Intent i1 = getIntent();
  		if( i1.getStringExtra("LID")!=null){
  			LID =i1.getStringExtra("LID");
  		}

        
        Intent i2 = getIntent();
  		if( i2.getStringExtra("LName")!=null){
  			LName = i2.getStringExtra("LName");
  		}
  		
        Intent i3 = getIntent();
  		if( i3.getStringExtra("Desc")!=null){
  			Descr = i3.getStringExtra("Desc");
  		}
  		
        Intent i3x = getIntent();
  		if( i3x.getStringExtra("ParkNo")!=null){
  			ParkNo = i3x.getStringExtra("ParkNo");
  		}

        Intent i3x1 = getIntent();
  		if( i3x1.getStringExtra("City")!=null){
  			City = i3x1.getStringExtra("City");
  		}
        

  		// Toast.makeText(PayBPark.this,"City" + City,Toast.LENGTH_LONG).show();
  		 
        Submit.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                
                	alert="";
                	
     			if(LName.toString().trim().length()<=0){
     				alert+="Lane Name Cannot be Empty\n";
     			}
     			if(Descr.toString().trim().length()<=0){
     				alert+="Description Cannot be Empty\n";
     			}
     			if(ParkNo.toString().trim().length()<=0){
     				alert+="Parking Number Cannot be Empty\n";
     			}

     			if(CNO.getText().toString().trim().length()<=0){
     				alert+="Enter Card Number\n";
     			}
     			if(CName.getText().toString().trim().length()<=0){
     				alert+="Enter Card Name\n";
     			}
     			if(CVV.getText().toString().trim().length()<=0){
     				alert+="Enter CVV\n";
     			}
     			if(City.toString().trim().length()<=0){
     				alert+="Enter City\n";
     			}
     			
     			if(!alert.trim().equals("")){
     				Toast.makeText(PayBPark.this,""+alert,Toast.LENGTH_LONG).show();     
     	        }
     			else
     			{	
     					saveData(incID(),LID, LName, Descr, UN, ParkNo,City);
     					CNO.setEnabled(false);
     					CName.setEnabled(false);
     					CVV.setEnabled(false);
     					Submit.setEnabled(false);
     		    }
                }
               });
        
        Back.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    Intent a=new Intent(PayBPark.this,UserMain.class);
                    a.putExtra("UN", UN.toString());
                    startActivity(a);
                }
               });
        
    }


    void createTable(){
        SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
        String MySQL = "create table if not exists BPark(ParkID Integer not null,LID Integer not null,LName Text not null,Description TEXT not null,UN TEXT not null,ParkNo Integer not null,City TEXT not null,DT Datetime not null);";
        myDb.execSQL(MySQL);
        myDb.close();
    }
public int incID(){    
	int ID=0;
	try{
	SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
	
	Cursor c = myDb.rawQuery("Select MAX(ParkID) From BPark",null);
	if(c.moveToNext()){
		ID=c.getInt(0);
		if(ID==0){
			ID=1;
		}
		else{				
			ID=ID+1;
		}
	}
	}
	catch(Exception e)
	{
		ID=1;
	}
	return ID;
}

void saveData(int IDd,String BusIDd,String Srcd,String Destd,String UNd,String SeatNod,String Cityd) {
	SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
	ContentValues newValues = new ContentValues();
	
   String dte="";
   Calendar c = Calendar.getInstance();
   SimpleDateFormat df = new SimpleDateFormat("dd-MM-yyyy");
   dte = df.format(c.getTime());
	    
	newValues.put("ParkID", IDd);
	newValues.put("LID", BusIDd);
	newValues.put("LName", Srcd);
	newValues.put("Description", Destd);
	newValues.put("UN", UNd);
	newValues.put("ParkNo", SeatNod);
	newValues.put("City", Cityd);
	newValues.put("DT", dte);
	long ret = myDb.insert("BPark", null, newValues);
	
	if (ret > 0){
			    			
		 Toast.makeText(PayBPark.this,"Bike Parking Booked Successfully",Toast.LENGTH_LONG).show();
	}
	myDb.close();
}
}
