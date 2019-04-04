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

public class viewbookuser extends Activity {

	SQLiteDatabase myDb;
	String DB_NAME ="Parking.db";


    private ListView list1;
    private ArrayList<String> Lst;
    private ArrayAdapter<String> adapterList;

	String UN;
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.viewbooksadmin);
      		
      		 list1=(ListView) findViewById(R.id.listView2VSBDA);
      		 
      		Intent i = getIntent();
 	  		if( i.getStringExtra("UN")!=null){
 	  			UN=	i.getStringExtra("UN");
 	  			
 	  		}
 	  		
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
                 Cursor c = myDb.rawQuery("SELECT * from CPark Where UN='" + UN +"' Order by DT Desc",null);
                 if(c.moveToFirst())
                 {
                     do
                     {
                         StrCmb=c.getString(c.getColumnIndex("ParkID"));
                         Lst.add("Parking-ID : "+StrCmb);
                         StrCmb="";
                         StrCmb=c.getString(c.getColumnIndex("LID"));
                         Lst.add("Lane-ID : "+StrCmb);
                         StrCmb="";
                         StrCmb=c.getString(c.getColumnIndex("LName"));
                         Lst.add("Lane : "+StrCmb);
                         StrCmb="";
                         StrCmb=c.getString(c.getColumnIndex("ParkNo"));
                         Lst.add("Parking Number : "+StrCmb);
                         StrCmb="";
                         StrCmb=c.getString(c.getColumnIndex("DT"));
                         Lst.add("Booked On : "+StrCmb);
                         StrCmb="";
                         StrCmb=c.getString(c.getColumnIndex("City"));
                         Lst.add("City : "+StrCmb);
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
