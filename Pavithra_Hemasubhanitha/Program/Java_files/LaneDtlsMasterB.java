package com.example.parking_vehicles;

import android.os.Bundle;
import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class LaneDtlsMasterB extends Activity {

	SQLiteDatabase myDb;
	String DB_NAME ="Parking.db";
	
	private TextView LID;
	private TextView LName;
	private TextView Descr;
	private TextView City;
    
	private Button Submit;
	private Button Back; 
	    
	int LIDs=0;
	String LNames="";
	String Descrs="";
	String Citys="";

	String alert="";
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.bikelanemaster);
        
        Submit=(Button) findViewById(R.id.CmdBSubLM);
        Back=(Button) findViewById(R.id.CmdBBackLM);  
        LID=(TextView) findViewById(R.id.TxtBLIDLM);  
        LName=(TextView) findViewById(R.id.TxtBLaneLM);
        Descr=(TextView) findViewById(R.id.TxtBDescLM);
        City=(TextView) findViewById(R.id.TxtBCityLM);

        // Form Load Event
	  	 createTable();
	  	 
	 	 LID.setText(""+incID());

        
	 	Submit.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	initdata(); // Read the Textbox Values	
     			alert="";
     			if(LName.getText().toString().trim().length()<=0){
     				alert+="Enter Lane Name\n";
     			}
     			SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
     			Cursor c=myDb.rawQuery("SELECT * FROM BLaneDtls WHERE LName='"+LName.getText().toString()+"' And City='"+City.getText().toString()+"'",null);
                if(c.moveToNext()){            
             	   alert+="Parking Lane Details Duplicated\n";
                 }
                if(Descr.getText().toString().trim().length()<=0){
     				alert+="Enter Description\n";
     			} 
                if(City.getText().toString().trim().length()<=0){
     				alert+="Enter City\n";
     			} 
     			if(!alert.trim().equals("")){
     				Toast.makeText(LaneDtlsMasterB.this,""+alert,Toast.LENGTH_LONG).show();     
     	        }
     			else{
	     			saveData(LIDs,LNames,Descrs,Citys);
	     			Cleardata();
     			}
            }
           });
        

        Back.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent a=new Intent(LaneDtlsMasterB.this,AdminMain.class);
                startActivity(a);
            }
           });
}

void createTable() {
    SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
    String MySQL = "create table if not exists BLaneDtls(LID Integer not null,LName Text not null,Description TEXT not null,City TEXT not null);";
    myDb.execSQL(MySQL);
    myDb.close();
}

public int incID(){    
	int ID=0;
	try{
	SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
	
	Cursor c = myDb.rawQuery("Select MAX(LID) From BLaneDtls",null);
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

void Cleardata(){
	LID.setText(""+incID());
	LName.setText("");
	Descr.setText("");	
	City.setText("");			 
}

void initdata(){
	try{
		LIDs=incID();
		LNames=LName.getText().toString();
		Descrs=Descr.getText().toString();
		Citys=City.getText().toString();
	}
	catch(Exception e)
	{
		Toast.makeText(LaneDtlsMasterB.this,"Loaded...",Toast.LENGTH_LONG).show();
	}
}

void saveData(int IDd,String LNamed,String Descrd,String Cityd) {
	SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
	ContentValues newValues = new ContentValues();
	newValues.put("LID", IDd);
	newValues.put("LName", LNamed);
	newValues.put("Description", Descrd);
	newValues.put("City", Cityd);
	long ret = myDb.insert("BLaneDtls", null, newValues);
	
	if (ret > 0){
			    			
		 Toast.makeText(LaneDtlsMasterB.this,"Parking Lane Details Created Successfully",Toast.LENGTH_LONG).show();
	}
	myDb.close();
}

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }
    
}