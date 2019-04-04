package com.example.parking_vehicles;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

public class AdminLogin extends Activity {

	private Button Login;	
	private TextView admin;	
	private TextView pass;   
      
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.adminlogin);

        Login=(Button) findViewById(R.id.btnAdminLogin);
        admin=(TextView) findViewById(R.id.txtAdminName);
        pass=(TextView) findViewById(R.id.txtAdminPass);
 
        Login.setOnClickListener(new View.OnClickListener() {
    		public void onClick(View v) {
    			 if (admin.getText().length()>0 && pass.getText().length()>0){
				if (admin.getText().toString().equals("admin") && pass.getText().toString().equals("admin")){
					admin.setText("");
					pass.setText("");
					Intent myIntent = new Intent(AdminLogin.this,AdminMain.class);
			    	startActivity(myIntent);
					 }
					 else{
						 Toast.makeText(getApplicationContext(), "Please Check the Username and Password", Toast.LENGTH_LONG).show();
					 		}
    			
    			 }
    			 else{
    				 Toast.makeText(getApplicationContext(), "Please Enter Username and Password", Toast.LENGTH_LONG).show();
 
    			 }
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
