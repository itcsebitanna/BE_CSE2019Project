package com.example.parking_vehicles;

import android.os.Bundle;
import android.os.Handler;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.Toast;

public class mainpage extends Activity {
	
	private Button Admin;
	 private Button Users;

		SQLiteDatabase myDb;
		String DB_NAME ="Parking.db";
		
		
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mainpage);
    
    	Admin=(Button) findViewById(R.id.CmdAdminMP);
    	Users=(Button) findViewById(R.id.CmdUserMP);
        
    	// createTable();
    	// createTable1();
    	
    	
    	 Admin.setOnClickListener(new View.OnClickListener() {
             public void onClick(View v) {
                 Intent a=new Intent(mainpage.this,AdminLogin.class);
                 startActivity(a);
             }
            });
    	 Users.setOnClickListener(new View.OnClickListener() {
         public void onClick(View v) {		
             Intent a=new Intent(mainpage.this,UserLogin.class);
             startActivity(a);
         }
        });        
    }

    /*
 * void createTable() {
    SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
    String MySQL = "Drop table CPark;";
    myDb.execSQL(MySQL);
    myDb.close();
	 Toast.makeText(mainpage.this,"Dropped 1",Toast.LENGTH_LONG).show();

}

void createTable1() {
    SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
    String MySQL = "Drop table BPark;";
    myDb.execSQL(MySQL);
    myDb.close();
	 Toast.makeText(mainpage.this,"Dropped 2",Toast.LENGTH_LONG).show();
}
*/
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }
    
}
