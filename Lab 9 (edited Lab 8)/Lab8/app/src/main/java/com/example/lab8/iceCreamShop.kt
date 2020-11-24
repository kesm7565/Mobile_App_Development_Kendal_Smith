package com.example.lab8

data class iceCreamShop(var name:String="", var url:String="") {
    fun suggestIceCreamShop(position:Int){
        setIceCreamShopName(position)
        setIceCreamShopUrl(position)
    }

    private fun setIceCreamShopName(position:Int){
        when(position){
            0-> name="Sweet Cow"
            1-> name="Dairy Queen"
            2-> name="Glacier"
            else-> name="Ice Cream Shop of Your Choice"


        }

    }

    private fun setIceCreamShopUrl(position:Int){
        when (position){
            0 -> url = "https://www.sweetcowicecream.com/"
            1 -> url = "https://www.dairyqueen.com/us-en/Locator/Detail/?localechange=1&store-id=2186&y_source=1_ODk5Njg4Mi03MTUtbG9jYXRpb24ud2Vic2l0ZQ%3D%3D/"
            2 -> url = "https://www.glaciericecream.com/"
            else -> url = "https://www.google.com/search?rlz=1C1CHBF_enUS914US914&ei=OWutX4PIHY20tQac5KTADA&q=ice+cream+places+near+me&oq=icecream+places+near+me&gs_lcp=CgZwc3ktYWIQAzIECAAQRzIECAAQRzIECAAQRzIECAAQRzIECAAQRzIECAAQRzIECAAQRzIECAAQR1AAWABgvhxoAHABeACAAQCIAQCSAQCYAQCqAQdnd3Mtd2l6yAEIwAEB&sclient=psy-ab&ved=0ahUKEwjDyPfKvv3sAhUNWs0KHRwyCcgQ4dUDCA0&uact=5"

        }

    }
}