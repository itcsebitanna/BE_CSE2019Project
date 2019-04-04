package com.example.parking_vehicles;

import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class UserMain extends Activity {

	SQLiteDatabase myDb;
	String DB_NAME ="Parking.db";
	
    private Button CP;
    private Button BP;
    private Button PS;
    private Button BPS;
    private Button SO;
    
    private TextView UNTxt;
    private TextView NameTxt;

	String UN;
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.usermain);

        CP=(Button) findViewById(R.id.CmdBookBusSM);
        BP=(Button) findViewById(R.id.CmdBikeParkingSM);
        PS=(Button) findViewById(R.id.CmdViewSummSM);
        BPS=(Button) findViewById(R.id.CmdVBPSSM);
        SO=(Button) findViewById(R.id.CmdSignoutSM);
        
        UNTxt=(TextView) findViewById(R.id.TxtUNCM);
		NameTxt=(TextView) findViewById(R.id.LblCM);
		
		 Intent i = getIntent();
	  		if( i.getStringExtra("UN")!=null){
	  			UN=	i.getStringExtra("UN");
	  			
	  		}
	  		NameTxt.setText(UN);
	  		
	  		myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
	        Cursor c = myDb.rawQuery("SELECT * From Register Where UN='" + UN + "'",null);	        
	   		while(c.moveToNext())
				{
	   			UNTxt.setText(c.getString(c.getColumnIndex("Mb")));
	 		}	
			
	   		
        CP.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent a=new Intent(UserMain.this,List_CarPark_Lane.class);
                a.putExtra("UN", UN.toString());
                startActivity(a);
            }
           });
        

        BP.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	  Intent a=new Intent(UserMain.this,List_BikePark_Lane.class);
                  a.putExtra("UN", UN.toString());
                  startActivity(a);
            }
           });
        PS.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	  Intent a=new Intent(UserMain.this,viewbookuser.class);
                  a.putExtra("UN", UN.toString());
                  startActivity(a);
            }
           });
        BPS.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	  Intent a=new Intent(UserMain.this,viewbikebookuser.class);
                  a.putExtra("UN", UN.toString());
                  startActivity(a);
            }
           });
        SO.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent a=new Intent(UserMain.this,MainActivity.class);
                startActivity(a);
            }
           });
        
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }
    
}
