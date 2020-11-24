package com.example.lab8

import android.app.Activity
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.util.Log
import com.google.android.material.floatingactionbutton.FloatingActionButton
import com.google.android.material.snackbar.Snackbar
import androidx.appcompat.app.AppCompatActivity
import kotlinx.android.synthetic.main.content_ice_cream.*


class iceCreamActivity : AppCompatActivity() {
    private var iceCreamShopName : String? = null
    private var iceCreamShopUrl : String? = null

    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_ice_cream)
        setSupportActionBar(findViewById(R.id.toolbar))


        iceCreamShopName = intent.getStringExtra("iceCreamShopName")
        iceCreamShopUrl = intent.getStringExtra("iceCreamShopUrl")

        iceCreamShopName?.let { Log.i("shop recieved", it)};
        iceCreamShopUrl?.let { Log.i("url recieved", it)};

        iceCreamShopName?.let {iceCreamShopTextView.text = "You should get ice cream at $iceCreamShopName "}

        findViewById<FloatingActionButton>(R.id.fab).setOnClickListener {
            loadWebSite();

        }
    }
    fun loadWebSite(){
        //createintent
        var intent = Intent()
        intent.action = Intent.ACTION_VIEW
        intent.data = iceCreamShopUrl?.let {Uri.parse(iceCreamShopUrl)}

        if (intent.resolveActivity(packageManager) != null){
            startActivity(intent)
        }
        else{
            //snackbar message
        }
    }
    override fun onBackPressed(){
        val data = Intent()
        data.putExtra( "feedback", feedbackEditText.text.toString())
        setResult(Activity.RESULT_OK, data) //must be called before super
        super.onBackPressed()
        finish()
    }
}