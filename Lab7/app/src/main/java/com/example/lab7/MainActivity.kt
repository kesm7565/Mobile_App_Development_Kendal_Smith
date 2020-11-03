package com.example.lab7


import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.EditText
import android.widget.ImageView
import android.widget.TextView

class MainActivity : AppCompatActivity() {
    lateinit var editName: EditText

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        editName = findViewById(R.id.editTextName)
    }
    fun starFishName(view: View) {

        val name = editName.text

        val starFishText = findViewById<TextView>(R.id.text_message)
        starFishText.setText("The Star Fish's Name is now " + name + "!")

       val imageStar = findViewById<ImageView>(R.id.imageView2)
       imageStar.setImageResource(R.drawable.starfish)
    }
}