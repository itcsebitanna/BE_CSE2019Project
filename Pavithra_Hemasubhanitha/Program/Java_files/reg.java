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

public class reg extends Activity {

	SQLiteDatabase myDb;
	String DB_NAME ="Parking.db";
	
	private TextView UID;
	private TextView UName;
	private TextView UN;
	private TextView Pwd;
	private TextView VN;
	private TextView Mb;
	private TextView Mail;
	private TextView Addr;
    
	private Button Submit;
	private Button Back; 
	    
	int UIDs=0;
	String UNames="";
	String UNs="";
	String Pwds="";
	String VNs="";
	String Mbs="";
	String Mails="";
	String Addrs="";

	String alert="";
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.registration);
        
        Submit=(Button) findViewById(R.id.CmdSubCR);
        Back=(Button) findViewById(R.id.CmdBackCR);  
        UID=(TextView) findViewById(R.id.TxtCIDCR);  
        UName=(TextView) findViewById(R.id.TxtCNameCR);
        UN=(TextView) findViewById(R.id.TxtUNCR);
        VN=(TextView) findViewById(R.id.TxtVNOCR);
        Pwd=(TextView) findViewById(R.id.TxtPwdCR);
        Mb=(TextView) findViewById(R.id.TxtMbCR);
        Mail=(TextView) findViewById(R.id.TxtMailCR);
        Addr=(TextView) findViewById(R.id.TxtAddressCR);

        // Form Load Event
	  	 createTable();
	  	 
	 	 UID.setText(""+incID());

        
	 	Submit.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	initdata(); // Read the Textbox Values	
     			alert="";
     			if(UName.getText().toString().trim().length()<=0){
     				alert+="Enter User Name\n";
     			}
     			if(Addr.getText().toString().trim().length()<=0){
     				alert+="Enter Address\n";
     			}
     			if(VN.getText().toString().trim().length()<=0){
     				alert+="Enter Vehicle Number\n";
     			}
     			SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
     			Cursor c=myDb.rawQuery("SELECT * FROM Register WHERE VNO='"+VN.getText().toString()+"' OR UN='"+UN.getText().toString()+"' OR Mail='"+Mail.getText().toString()+"'",null);
                if(c.moveToNext()){            
             	   alert+="Details Duplicated\n";
                 }
     			if(Pwd.getText().toString().trim().length()<=0){
     				alert+="Enter Password\n";
     			}
     			if((Mb.getText().toString().trim().length()<=0)||(Mb.getText().toString().trim().length()>10)||(Mb.getText().toString().trim().length()<10)){
     				alert+="Enter Mobile Number\n";
     			}
     			if(UN.getText().toString().trim().length()<=0){
     				alert+="Enter Username\n";
     			} 
     			if(Mail.getText().toString().trim().length()<=0){
     				alert+="Enter E-Mail-ID\n";
     			} 
     			if(!alert.trim().equals("")){
     				Toast.makeText(reg.this,""+alert,Toast.LENGTH_LONG).show();     
     	        }
     			else{
	     			saveData(UIDs,UNames,UNs,Pwds,VNs,Mbs,Mails,Addrs);
	     			Cleardata();
     			}
            }
           });
        

        Back.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent a=new Intent(reg.this,MainActivity.class);
                startActivity(a);
            }
           });
    }

void createTable() {
    SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
    String MySQL = "create table if not exists Register(UID Integer not null,UName Text not null,UN TEXT not null,Pwd TEXT not null,VNO TEXT not null,Mb TEXT not null,Mail TEXT not null,Address TEXT not null);";
    myDb.execSQL(MySQL);
    myDb.close();
} 

public int incID(){    
	int ID=0;
	try{
	SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
	
	Cursor c = myDb.rawQuery("Select MAX(UID) From Register",null);
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
	UID.setText(""+incID());
	UName.setText("");
	UN.setText("");
	Pwd.setText("");
	VN.setText("");
	Mb.setText("");
	Mail.setText("");
	Addr.setText("");			 
}

void initdata(){
	try{
		UIDs=incID();
		UNames=UName.getText().toString();
		UNs=UN.getText().toString();
		Pwds=Pwd.getText().toString();
		VNs=VN.getText().toString();
		Mbs=Mb.getText().toString();
		Mails=Mail.getText().toString();
		Addrs=Addr.getText().toString();
	}
	catch(Exception e)
	{
		Toast.makeText(reg.this,"Loaded...",Toast.LENGTH_LONG).show();
	}
}

void saveData(int IDd,String Named,String UNd,String PWordd,String VNd,String Mobd,String Maild,String Addrd) {
	SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
	ContentValues newValues = new ContentValues();
	newValues.put("UID", IDd);
	newValues.put("UName", Named);
	newValues.put("UN", UNd);
	newValues.put("Pwd", PWordd);
	newValues.put("VNO", VNd);
	newValues.put("Mb", Mobd);
	newValues.put("Mail", Maild);
	newValues.put("Address", Addrd);
	long ret = myDb.insert("Register", null, newValues);
	
	if (ret > 0){	    			
			    			
		 Toast.makeText(reg.this,"Details Registered Successfully",Toast.LENGTH_LONG).show();
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