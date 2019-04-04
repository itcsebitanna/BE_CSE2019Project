package com.example.parking_vehicles;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.widget.Button;

public class MainActivity extends Activity {
	 private Button Proceed;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Proceed=(Button) findViewById(R.id.CmdProceedAM);
        
        
        Proceed.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    Intent a=new Intent(MainActivity.this,mainpage.class);
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
