package com.example.lab8

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.RadioButton
import com.google.android.material.snackbar.Snackbar
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
    }

    fun createIceCream(view: View) {
        var flavor:CharSequence = ""

        var toppinglist = "" //String

        val flavorId = radioGroup.checkedRadioButtonId

        if(flavorId == -1){
            //snack bar
            val fillingSnackbar = Snackbar.make(rout_layout, "Please Select a Topping", Snackbar.LENGTH_SHORT)
            fillingSnackbar.show()
        }
        else {
            flavor = findViewById<RadioButton>(flavorId).text
            //checkboxes
            if(checkBox1.isChecked){
                toppinglist += " " + checkBox1.text
            }
            if(checkBox2.isChecked){
                toppinglist += " " + checkBox2.text
            }
            if(checkBox3.isChecked){
                toppinglist += " " + checkBox3.text
            }
            if(checkBox4.isChecked){
                toppinglist += " " + checkBox4.text
            }
            if(toppinglist.isNotEmpty()){
                toppinglist = "with" + toppinglist
            }


            //toppingList = (if (toppinglist.isNotEmpty()) "with $toppinglist" else"").toString()
            //spinner
            val location = "at " + spinner.selectedItem

            //switch
            if(sugarSwitch.isChecked){
                flavor = sugarSwitch.text.toString() + " $flavor "
            }

            messageTextView.text = "You'd like $flavor ice cream $toppinglist"
        }


    }
}