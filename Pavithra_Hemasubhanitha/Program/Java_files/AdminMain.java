package com.example.parking_vehicles;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.widget.Button;

public class AdminMain extends Activity {
	
	 private Button VU;
	 private Button LM;
	 private Button BLM;
	 private Button CPS;
	 private Button BPS;
	 private Button Signout;
	 
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.adminmain);
        
    	
        VU=(Button) findViewById(R.id.CmdViewUsersAM);
        LM=(Button) findViewById(R.id.CmdLaneMasterAM);
        BLM=(Button) findViewById(R.id.CmdLMBPAM);
        CPS=(Button) findViewById(R.id.CmdCarParkingSummaryAM);
        BPS=(Button) findViewById(R.id.CmdBikeParkingSummaryAM);
        Signout=(Button) findViewById(R.id.CmdSignoutAM);
        
        
        VU.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                	 Intent a=new Intent(AdminMain.this,viewusers.class);
                     startActivity(a);
                }
               });    
        LM.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	 Intent a=new Intent(AdminMain.this,LaneDtlsMaster.class);
                 startActivity(a);
            }
           });
        BLM.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	 Intent a=new Intent(AdminMain.this,LaneDtlsMasterB.class);
                 startActivity(a);
            }
           });
        CPS.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	 Intent a=new Intent(AdminMain.this,viewbookadmin.class);
                 startActivity(a);
            }
           });
        BPS.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
            	 Intent a=new Intent(AdminMain.this,viewbikebookadmin.class);
                 startActivity(a);
            }
           });
        Signout.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    Intent a=new Intent(AdminMain.this,mainpage.class);
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
