package com.envision.envision;
//package net.Envision.firebasephoneauth;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.speech.RecognizerIntent;
import android.speech.tts.TextToSpeech;
import android.support.v4.view.GestureDetectorCompat;
import android.support.v7.app.AppCompatActivity;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.Locale;

public class payee extends AppCompatActivity {

    private TextView voiceInput;
    private TextView speakButton;
    TextToSpeech t1;
    private GestureDetectorCompat gestureObject;
    int myNum = 0;
    //GestureDetector gestureDetector;
    private final int REQ_CODE_SPEECH_INPUT = 10;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
  //      setContentView(R.layout.content_voice);
        gestureObject = new GestureDetectorCompat(this,new LearnGesture());
        //  gestureDetector = new GestureDetector(net.Envision.firebasephoneauth.VoiceActivity.this, (OnGestureListener) net.Envision.firebasephoneauth.VoiceActivity.this);
        t1 = new TextToSpeech(getApplicationContext(), new TextToSpeech.OnInitListener() {
            @Override
            public void onInit(int status) {
                if (status != TextToSpeech.ERROR) {
                    t1.setLanguage(Locale.UK);
                    t1.speak("Please Tell your phone number", TextToSpeech.QUEUE_FLUSH, null);
                }
            }

        });

        //  String a = "Please Speak your phone number";
        // String toSpeak = voiceInput.getText().toString();
        // Toast.makeText(getApplicationContext(), a, Toast.LENGTH_SHORT).show();
        //  t1.speak("Please Speak your phone number", TextToSpeech.QUEUE_FLUSH, null);
    //    voiceInput = (TextView) findViewById(R.id.editText);

        Intent intent = new Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH);
        intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL,
                RecognizerIntent.LANGUAGE_MODEL_FREE_FORM);
        intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, Locale.getDefault());
        intent.putExtra(RecognizerIntent.EXTRA_PROMPT,
                "Please Speak your phone number");

        startActivityForResult(intent, REQ_CODE_SPEECH_INPUT);

    }

    //@Override


    // Receiving speech input

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);


        switch (requestCode) {
            case REQ_CODE_SPEECH_INPUT: {
                if (resultCode == RESULT_OK && null != data) {

                    ArrayList<String> result = data
                            .getStringArrayListExtra(RecognizerIntent.EXTRA_RESULTS);
                    voiceInput.setText(result.get(0));


                    String toSpeak = voiceInput.getText().toString();
                    Toast.makeText(getApplicationContext(), toSpeak, Toast.LENGTH_SHORT).show();
                    t1.speak(toSpeak+"                            to confirm the number swap right, or to reenter swap left", TextToSpeech.QUEUE_FLUSH, null);

                }

            }
        }

    }
    @Override
    public boolean onTouchEvent(MotionEvent event){
        this.gestureObject.onTouchEvent(event);
        return super.onTouchEvent(event);
    }

    class LearnGesture extends GestureDetector.SimpleOnGestureListener{

        @Override
        public boolean onFling(MotionEvent event1,MotionEvent event2,float velocityX,float velocityY){
            if (event2.getX()>event1.getX())
            {
                startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.google.com")));
                //  finish();
                //if(sound.isPlaying()){
                //   sound.pause();
            }



            else {
                //   sound.start();
//


                if (event2.getX()<event1.getX()) {
                    //onCreate(savedInstanceState);
                }

            }
            return true;
        }

    }


}



