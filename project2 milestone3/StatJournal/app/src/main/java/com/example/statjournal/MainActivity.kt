package com.example.statjournal
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.appcompat.app.AppCompatActivity
import com.google.android.material.textfield.TextInputEditText


const val EXTRA_MESSAGE = "com.example.StatJournal.MESSAGE"
class MainActivity : AppCompatActivity() {
    private val FILENAME = "example.txt"
   // var mEditText: EditText? = null
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    fun sendMessage(view: View) {
        val editText = findViewById<TextInputEditText>(R.id.dailyTextEntry)
        val message = editText.text.toString()
        val intent = Intent(this, journalEntriesActivity::class.java).apply {
            putExtra(EXTRA_MESSAGE, message)
        }
                startActivity(intent)

            }
        }







