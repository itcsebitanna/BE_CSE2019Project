package com.example.parking_vehicles;

import android.os.Bundle;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

public class UserLogin extends Activity {

	SQLiteDatabase myDb;
	String DB_NAME ="Parking.db";
	
	private TextView Pwd;
	private TextView UN;
	
    private Button submit;
    private Button Reg; 
    
    String alert="";
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.login);

        submit=(Button) findViewById(R.id.CmdLoginCCL);
        Reg=(Button) findViewById(R.id.CmdRegCCL);       
        Pwd=(TextView) findViewById(R.id.TxtPasswordCCL);
		UN=(TextView) findViewById(R.id.TxtUNCCL);

        
        submit.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	String alert="";
                if(UN.getText().toString().trim().length()<=0){
                    alert+="Enter Username\n";
                }
                if(Pwd.getText().toString().trim().length()<=0){
                    alert+="Enter Password\n";
                }
                if(!alert.trim().equals("")){
                    AlertDialog.Builder b= new AlertDialog.Builder(UserLogin.this);
                    b.setTitle("Cannot Proceed");
                    b.setMessage(alert);
                    b.setIcon(R.drawable.ic_launcher);
                    b.show();
                }
                else {
                    SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME, Context.MODE_PRIVATE, null);
                    Cursor c = myDb.rawQuery("SELECT * FROM Register WHERE UN='" + UN.getText().toString() + "' and Pwd='" + Pwd.getText().toString() + "'", null);
                    if (c.moveToNext()) {
                    	Intent i = new Intent(UserLogin.this,UserMain.class);
                        i.putExtra("UN", UN.getText().toString());
                        i.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP|Intent.FLAG_ACTIVITY_NEW_TASK);
                        startActivity(i);
                    }
                    else
                    {
                        AlertDialog.Builder b= new AlertDialog.Builder(UserLogin.this);
                        b.setTitle("Cannot Proceed");
                        b.setMessage("Invalid Authentication");
                        b.setIcon(R.drawable.ic_launcher);
                        b.show();

                    }
                }
            }
           });
        

        Reg.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	Intent a=new Intent(UserLogin.this,reg.class);
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
