package com.example.counterdroid

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
// import android.view.View to get the rectangular area
// used as canvas for phone
import android.view.View
// import android.widget.TextView to get
// information from the widget to use for
// changing the counter
import android.widget.TextView

class MainActivity : AppCompatActivity() {

    var counter = Counter()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    public fun incrementCounter(view: View) {
        counter.increment()
        // obtains id for counterText shown in activity_main.xml
        // under     <TextView
        //        android:id="@+id/counterText"
        val counterText: TextView = findViewById(R.id.counterText)
        // updates the text shown in xml to increase the number on
        // button click
        counterText.text = counter.value.toString()
    }
}