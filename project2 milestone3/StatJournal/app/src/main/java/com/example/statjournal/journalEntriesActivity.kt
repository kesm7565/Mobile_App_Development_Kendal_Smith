package com.example.statjournal

import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class journalEntriesActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_journal_entries)

        val message = intent.getStringExtra(EXTRA_MESSAGE)

        findViewById<TextView>(R.id.textView2).apply {
            text = message//making text typed in by user appear
        }
        startActivity(intent)

        fun sortWords(){
            //puts string into array
        val word = message?.split(("\\s+").toRegex())?.dropLastWhile { it.isEmpty() }?.toTypedArray()
        //if the array isnt empty...
            if (word != null) {
            for (i in word.indices) {
                //puts each invididual word into a space in array
                word[i] = word[i].replace(("[^\\w]").toRegex(), "")
            }
        }
            //measuring the size of the array
        val lastNum = word?.size
            //offers 3 different random numbers depending on the size of the array
        val rand = (0..(lastNum?.minus(1)!!)).random()
            val rand1 = (0..(lastNum?.minus(1)!!)).random()
            val rand2 = (0..(lastNum?.minus(1)!!)).random()


            findViewById<TextView>(R.id.wordNumberOne).apply {
                text = word[rand]//applies this textview with a random word in the string
            }

            findViewById<TextView>(R.id.textView5).apply {
                text = word[rand1]//applies this textview with a random word in the string
            }
            findViewById<TextView>(R.id.wordNumberThree).apply {
                text = word[rand2]//applies this textview with a random word in the string
            }
        }
        sortWords()//calls function
    }
        }

