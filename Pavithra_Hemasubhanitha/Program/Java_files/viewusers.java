package com.example.parking_vehicles;

import java.util.ArrayList;
import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

public class viewusers extends Activity {

	SQLiteDatabase myDb;
	String DB_NAME ="Parking.db";


    private ListView list1;
    private ArrayList<String> Lst;
    private ArrayAdapter<String> adapterList;

	String UN;
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.viewusers);

        
      		 list1=(ListView) findViewById(R.id.listView2VUAM);

             LoadData();
         }

         @Override
         public boolean onOptionsItemSelected(MenuItem item) {
             // Handle action bar item clicks here. The action bar will
             // automatically handle clicks on the Home/Up button, so long
             // as you specify a parent activity in AndroidManifest.xml.
             int id = item.getItemId();
            // Toast.makeText(getApplicationContext(), " " + id, Toast.LENGTH_LONG).show();
             
             //noinspection SimplifiableIfStatement
             if (id == R.id.action_settings) {
                 return true;
             }

             return super.onOptionsItemSelected(item);
         }

         void LoadData(){
             int val=0;
             int i=0;
             String StrCmb="";
             Lst=new ArrayList<String>();

             ArrayAdapter<String> adapter = new ArrayAdapter<String>(this,
                     android.R.layout.simple_spinner_item, Lst);
             adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
             SQLiteDatabase myDb = openOrCreateDatabase(DB_NAME, Context.MODE_PRIVATE, null);
             if(myDb != null) {
                 Cursor c = myDb.rawQuery("SELECT * from Register Order by UName Asc",null);
                 if(c.moveToFirst())
                 {
                     do
                     {
                         StrCmb=c.getString(c.getColumnIndex("UID"));
                         Lst.add("User-ID : "+StrCmb);
                         StrCmb="";
                         StrCmb=c.getString(c.getColumnIndex("UName"));
                         Lst.add("Name : "+StrCmb);
                         StrCmb="";
                         StrCmb=c.getString(c.getColumnIndex("UN"));
                         Lst.add("Username : "+StrCmb);
                         StrCmb="";
                         StrCmb=c.getString(c.getColumnIndex("Mail"));
                         Lst.add("E-Mail-ID : "+StrCmb);
                         StrCmb="";
                         StrCmb=c.getString(c.getColumnIndex("Mb"));
                         Lst.add("Mobile Number : "+StrCmb);
                         StrCmb="";
                         StrCmb=c.getString(c.getColumnIndex("Address"));
                         Lst.add("Address : "+StrCmb);
                         StrCmb="";
                         Lst.add("_____________________________________");

                         list1.setAdapter(adapter);
                     }while(c.moveToNext());//Move the cursor to the next row.
                 }
                 else
                 {
                     Toast.makeText(getApplicationContext(), "No Data Found", Toast.LENGTH_LONG).show();
                 }
             }
         }
     }
