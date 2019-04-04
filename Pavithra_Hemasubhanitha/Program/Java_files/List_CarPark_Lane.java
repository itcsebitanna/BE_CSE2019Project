package com.example.parking_vehicles;

import java.io.File;
import java.util.ArrayList;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

public class List_CarPark_Lane extends Activity {

    String DB_NAME ="Parking.db";
    SQLiteDatabase myDb;
    MyCustomAdapter dataAdapter = null;

    private ListView listView;

    String LID;
    String LName;
    String Descr;
    String City;
    
    String LIDs;
    String LNames;
    String Descrs;
    String Citys;
    
    String UN;
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.lst_user_lane);
       
        Intent i = getIntent();
  		if( i.getStringExtra("UN")!=null){
  			UN=	i.getStringExtra("UN");
  			
  		}
  		
        LoadData();
        
        // Selecting the ID to Move to Next Page
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> listView, View view,int position, long id) {
            	List_CLane Pet= (List_CLane) listView.getItemAtPosition(position);
               
            	LIDs=Pet.getLID();
            	LNames=Pet.getLName();
            	Descrs=Pet.getDescr();
            	Citys=Pet.getCity();
            
                Intent a=new Intent(List_CarPark_Lane.this,BookCPark.class);
                a.putExtra("UN", UN.toString());
                a.putExtra("LID", LIDs);
                a.putExtra("LName", LNames);
                a.putExtra("Desc", Descrs);
                a.putExtra("City", Citys);
                startActivity(a);
            }        
        });
    }
    
    private void LoadData()
    {

        myDb = openOrCreateDatabase(DB_NAME,Context.MODE_PRIVATE, null);
        Cursor c = myDb.rawQuery("SELECT * From CLaneDtls Where City=(Select Address From Register Where UN='" + UN + "')  Order By LName Asc",null);
        ArrayList<List_CLane> List = new ArrayList<List_CLane>();
        while(c.moveToNext())
        {
        	LID=c.getString(c.getColumnIndex("LID"));        	
        	LName=c.getString(c.getColumnIndex("LName"));
            Descr=c.getString(c.getColumnIndex("Description"));
            City=c.getString(c.getColumnIndex("City"));
            
            List_CLane lst = new List_CLane();
            lst.setLID(LID);
            lst.setLName(LName);
            lst.setDescr(Descr);
            lst.setCity(City);

            List.add(lst);

        }

        dataAdapter = new MyCustomAdapter(this,R.layout.lst_user_lane_txt, List);
        listView = (ListView) findViewById(R.id.listView2CPUS);
        // Assign adapter to ListView
        listView.setAdapter(dataAdapter);	
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }

    private class MyCustomAdapter extends ArrayAdapter<List_CLane> {
        private ArrayList<List_CLane> StdList;
        public MyCustomAdapter(Context context, int textViewResourceId, ArrayList<List_CLane> Petition) {
            super(context, textViewResourceId, Petition);
            this.StdList = new ArrayList<List_CLane>();
            this.StdList.addAll(Petition);
        }
        private class ViewHolder {
            TextView LID;
            TextView LName; 
            TextView Descr; 
            TextView City;
        }
        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            ViewHolder holder = null;

            if (convertView == null) {
                LayoutInflater vi = (LayoutInflater)getSystemService(
                        Context.LAYOUT_INFLATER_SERVICE);
                convertView = vi.inflate(R.layout.lst_user_lane_txt, null);
                holder = new ViewHolder();

                holder.LID= (TextView) convertView.findViewById(R.id.TxtLIDCPUS);
                holder.LName= (TextView) convertView.findViewById(R.id.TxtLNameCPUS);
                holder.Descr = (TextView) convertView.findViewById(R.id.TxtDescCPUS);     
                holder.City = (TextView) convertView.findViewById(R.id.TxtCityCPUS);                

                convertView.setTag(holder);
            }
            else 
            {
                holder = (ViewHolder) convertView.getTag();
            }
            List_CLane Pet = StdList.get(position);
            holder.LID.setText("" + Pet.getLID());
            holder.LName.setText("" + Pet.getLName());
            holder.Descr.setText(Pet.getDescr());
            holder.City.setText(Pet.getCity());
            return convertView;
        }
    }
}