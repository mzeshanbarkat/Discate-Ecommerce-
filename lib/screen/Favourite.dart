import 'package:flutter/material.dart';
import 'package:ecommerce_app/data/const.dart';


class favourite extends StatefulWidget {
  static String id = 'Favourite';
  @override
  _favouriteState createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false, // set it to false

      backgroundColor: backgroundcolor,

      appBar: AppBar(

        title: Center(child: Text('Favourite',style: kSecondaryStyle,)),
      ),

      body: Container(
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
                          child: Image(image: AssetImage('assets/bag2.jpg'),fit: BoxFit.fill,),
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
                              child: Text('Leather Bag',style: kPrimaryStyle,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 2,left: 5),
                              child: Text('Vintage Red',style: kPrimaryStyle,),
                            ),

                            SizedBox(height: 8,),
                            Padding(
                              padding: const EdgeInsets.only(top: 2,left: 5),
                              child: Text(new String.fromCharCodes(new Runes('\u002470'),),style: kSecondaryStyle,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 7,left: 5),
                              child: Text(new String.fromCharCodes(new Runes('Shipping \u002415'),),style:kPrimaryStyle,),
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
                          child: Image(image: AssetImage('assets/jacket2.jpg'),fit: BoxFit.fill,),
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
                              child: Text('Black Leather',style: kPrimaryStyle,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 2,left: 5),
                              child: Text('Men Jaket',style: kPrimaryStyle,),
                            ),

                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Text(new String.fromCharCodes(new Runes('\u0024100'),),style: TextStyle(decoration: TextDecoration.lineThrough,color: Color(0xff727C8E),fontFamily: 'Proxima Nova',)),
                                ),
                                Text(' 40%off',style: TextStyle(color: Colors.pinkAccent,fontFamily: 'Proxima Nova',)),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2,left: 5),
                              child: Text(new String.fromCharCodes(new Runes('\u002460'),),style: kSecondaryStyle,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 7,left: 5),
                              child: Text(new String.fromCharCodes(new Runes('Shipping \u002420'),),style:kPrimaryStyle,),
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
                          child: Image(image: AssetImage('assets/shoes.jpg'),fit: BoxFit.fill,),
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
                              child: Text('Brown Leather',style: kPrimaryStyle,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 2,left: 5),
                              child: Text('Men Shoes',style: kPrimaryStyle,),
                            ),

                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(top: 2,left: 5),
                              child: Text(new String.fromCharCodes(new Runes('\u002469.99'),),style: kSecondaryStyle,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 7,left: 5),
                              child: Text(new String.fromCharCodes(new Runes('Shipping \u002410'),),style:kPrimaryStyle,),
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

            ],
          ),
        ),
      ),

    ),);
  }
}
