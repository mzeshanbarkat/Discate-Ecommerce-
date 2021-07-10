import 'package:ecommerce_app/data/const.dart';
import 'package:flutter/material.dart';


class cart extends StatefulWidget {
  static String id = 'Cart';
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false, // set it to false

      backgroundColor: backgroundcolor,

      appBar: AppBar(

        title: Center(child: Text('Cart',style: kSecondaryStyle,)),
      ),

      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
              // color: Colors.red,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                margin: new EdgeInsets.only(left: 20,top: 12),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.0),
                                    color: Colors.white,
                                  ),
                                  height: 120,
                                  width: 100,
                                  child: Image(image: AssetImage('assets/watch2.jpg'),fit: BoxFit.fill,),
                                ),
                              )
                          ),

                          SizedBox(width: 8,),
                          Expanded(
                            flex: 2,
                            child: Card(
                              elevation: 2,
                              margin: EdgeInsets.only(top: 15,right: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                width: 40,
                                height: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  // color: Colors.blue,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4,left: 5),
                                      child: Text('Daniel Wallington',style: kPrimaryStyle,),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 2,left: 5),
                                      child: Text('Men Watch',style: kPrimaryStyle,),
                                    ),

                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: Text(new String.fromCharCodes(new Runes('\u0024100'),),style: TextStyle(decoration: TextDecoration.lineThrough,color: Color(0xff727C8E),fontFamily: 'Proxima Nova',)),
                                        ),
                                        Text(' 20%off',style: TextStyle(color: Colors.pinkAccent,fontFamily: 'Proxima Nova',)),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2,left: 5),
                                      child: Text(new String.fromCharCodes(new Runes('\u002480'),),style: kSecondaryStyle,),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 7,left: 5),
                                      child: Text(new String.fromCharCodes(new Runes('Shipping \u00245'),),style:kPrimaryStyle,),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text('1 to 5 Days',style: kPrimaryStyle,),
                                    ),






                                  ],
                                ),

                              ),
                            ),),



                        ],
                      ),

                      Row(
                        children: [
                          Expanded(
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                margin: new EdgeInsets.only(left: 20,top: 12),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.0),
                                    color: Colors.white,
                                  ),
                                  height: 120,
                                  width: 100,
                                  child: Image(image: AssetImage('assets/headphone.jpg'),fit: BoxFit.fill,),
                                ),
                              )
                          ),

                          SizedBox(width: 8,),
                          Expanded(
                            flex: 2,
                            child: Card(
                              elevation: 2,
                              margin: EdgeInsets.only(top: 15,right: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                width: 40,
                                height: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  // color: Colors.blue,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4,left: 5),
                                      child: Text('Audio Beats',style: kPrimaryStyle,),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 2,left: 5),
                                      child: Text('Studio 3 Headphone',style: kPrimaryStyle,),
                                    ),

                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: Text(new String.fromCharCodes(new Runes('\u0024200'),),style: TextStyle(decoration: TextDecoration.lineThrough,color: Color(0xff727C8E),fontFamily: 'Proxima Nova',)),
                                        ),
                                        Text(' 30%off',style: TextStyle(color: Colors.pinkAccent,fontFamily: 'Proxima Nova',)),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2,left: 5),
                                      child: Text(new String.fromCharCodes(new Runes('\u0024120'),),style: kSecondaryStyle,),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 7,left: 5),
                                      child: Text(new String.fromCharCodes(new Runes('Shipping \u002420'),),style:kPrimaryStyle,),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text('1 to 3 Days',style: kPrimaryStyle,),
                                    ),






                                  ],
                                ),

                              ),
                            ),),



                        ],
                      ),

                      Row(
                        children: [
                          Expanded(
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                margin: new EdgeInsets.only(left: 20,top: 12),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14.0),
                                    color: Colors.white,
                                  ),
                                  height: 120,
                                  width: 100,
                                  child: Image(image: AssetImage('assets/adidas.jpg'),fit: BoxFit.fill,),
                                ),
                              )
                          ),

                          SizedBox(width: 8,),
                          Expanded(
                            flex: 2,
                            child: Card(
                              elevation: 2,
                              margin: EdgeInsets.only(top: 15,right: 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Container(
                                width: 40,
                                height: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  // color: Colors.blue,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 4,left: 5),
                                      child: Text('Adidas Blue',style: kPrimaryStyle,),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 2,left: 5),
                                      child: Text('Men Shoes',style: kPrimaryStyle,),
                                    ),

                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5),
                                          child: Text(new String.fromCharCodes(new Runes('\u002450'),),style: TextStyle(decoration: TextDecoration.lineThrough,color: Color(0xff727C8E),fontFamily: 'Proxima Nova',)),
                                        ),
                                        Text(' 10%off',style: TextStyle(color: Colors.pinkAccent,fontFamily: 'Proxima Nova',)),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 2,left: 5),
                                      child: Text(new String.fromCharCodes(new Runes('\u002440'),),style: kSecondaryStyle,),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 7,left: 5),
                                      child: Text(new String.fromCharCodes(new Runes('Shipping \u002410'),),style:kPrimaryStyle,),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text('1 to 4 Days',style: kPrimaryStyle,),
                                    ),

                                  ],
                                ),

                              ),
                            ),),



                        ],
                      ),
                    ],
                  ),
                ),
            ),),

            Expanded(
              child: Card(
                child: Container(
                  width: 380,
                  color: Color(0xfff5f5f5),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text('Order Summary',style: kSecondaryStyle),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Text('Total items',style: TextStyle(fontSize: 15,color: primarycolor),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text('Shipping Charges',style: TextStyle(fontSize: 15,color: primarycolor),),
                                    ),

                                  ],
                                ),
                              ),
                            ),

                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text('Audio Beats',style: kTertiaryStyle),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 40),
                                      child: Text('1',style: kTertiaryStyle),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Text(new String.fromCharCodes(new Runes('Shipping \u002420'),),style:kTertiaryStyle,),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),


                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Container(
                            // color: Colors.red,
                            child: Column(
                              children: [
                                Container(
                                  child: Divider(
                                    thickness: 1,
                                    height: 10,
                                  ),
                                ),

                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 10,),
                                            Text('TOTAL',style: TextStyle(fontSize: 15,color: primarycolor),),
                                            Text(new String.fromCharCodes(new Runes('\u0024140'),),style:kSecondaryStyle,),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(right: 10),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 10,),
                                             RaisedButton(
                                              color: tertiarycolor,
                                              elevation: 4,
                                              child:SizedBox(
                                                width: 320,
                                                height: 45,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex:5,
                                                      child: Text('Buy Now',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.white),),
                                                    ),
                                                    Container(
                                                      width: 30,
                                                      height: 30,
                                                      child: IconButton(icon: Icon(Icons.arrow_forward_ios),iconSize: 16,),
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(100),
                                                      ),
                                                    ),

                                                  ],
                                                ),

                                              ),

                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(30),
                                              ),
                                              onPressed: (){
                                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()),);

                                              },

                                            )
                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                ),


                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),),

          ],
        ),
      ),

    ),);
  }
}
