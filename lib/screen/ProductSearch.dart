import 'package:flutter/material.dart';
import 'package:ecommerce_app/data/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class productsearch extends StatefulWidget {
  static String id = 'ProductSearch';

  @override
  _productsearchState createState() => _productsearchState();
}

class _productsearchState extends State<productsearch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,

        body: Container(
          child: Column(
            children: [

              Expanded(child: Container(

                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 300,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Icons.search,color: primarycolor,),
                                ),
                                hintText: 'Search',hintStyle: kPrimaryStyle,
                              ),
                            ),
                          ),

                          SizedBox(width: 7,),
                          Container(
                            child: IconButton(icon:Icon(FontAwesomeIcons.list,color: primarycolor,),
                              onPressed:(){
                              },
                            ),
                          ),
                        ],
                      ),


                      Container(
                        margin: EdgeInsets.only(left: 15,),
                        child: Row(
                          children: [
                            Container(
                              child: Row(children: [
                                RaisedButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                    color: Color(0xfff2ae1b),
                                    child: Row(
                                      children: [
                                        Text('Popular'),
                                        Icon(Icons.arrow_drop_down)
                                      ],),
                                    onPressed: (){
                                      _bottomSheet(context);
                                    })
                              ],),

                            )

                          ],
                        ),
                      ),  //RaisedButton

                      Container(
                        margin: EdgeInsets.only(left: 15,right: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                elevation:3,
                                child: Container(
                                  color: Colors.white,
                                  width: 210,
                                  height: 250,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex:2,
                                        child: Container(
                                          color: Colors.grey,
                                          child: Image(image: AssetImage('assets/watch2.jpg'),fit: BoxFit.cover,),
                                        ),),

                                      Expanded(
                                        child: Container(
                                          // color: Colors.black12,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex:2,
                                                child: Container(
                                                  // color: Colors.red,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('DW Watch',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('Brown Edition',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 20,left: 5),
                                                        child: Text('Price',style: kPrimaryStyle,),
                                                      ),


                                                    ],
                                                  ),
                                                ),),

                                              Expanded(
                                                child: Container(
                                                  // color: Colors.amber,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.end,

                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 14),
                                                        child: Text(new String.fromCharCodes(new Runes('\u002470'),),style: kSecondaryStyle,),
                                                      ),

                                                    ],
                                                  ),
                                                ),),


                                            ],
                                          ),
                                        ),),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Card(
                                elevation:3,
                                child: Container(
                                  color: Colors.white,
                                  width: 210,
                                  height: 250,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex:2,
                                        child: Container(
                                          color: Colors.grey,
                                          child: Image(image: AssetImage('assets/watch3.jpg'),fit: BoxFit.cover,),
                                        ),),

                                      Expanded(
                                        child: Container(
                                          // color: Colors.black12,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex:2,
                                                child: Container(
                                                  // color: Colors.red,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('DW Watch',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('Silver Edition',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 20,left: 5),
                                                        child: Text('Price',style: kPrimaryStyle,),
                                                      ),


                                                    ],
                                                  ),
                                                ),),

                                              Expanded(
                                                child: Container(
                                                  // color: Colors.amber,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.end,

                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 14),
                                                        child: Text(new String.fromCharCodes(new Runes('\u0024100'),),style: kSecondaryStyle,),
                                                      ),

                                                    ],
                                                  ),
                                                ),),


                                            ],
                                          ),
                                        ),),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 15,right: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                elevation:3,
                                child: Container(
                                  color: Colors.white,
                                  width: 210,
                                  height: 250,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex:2,
                                        child: Container(
                                          color: Colors.grey,
                                          child: Image(image: AssetImage('assets/watch2.jpg'),fit: BoxFit.cover,),
                                        ),),

                                      Expanded(
                                        child: Container(
                                          // color: Colors.black12,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex:2,
                                                child: Container(
                                                  // color: Colors.red,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('DW Watch',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('Brown Edition',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 20,left: 5),
                                                        child: Text('Price',style: kPrimaryStyle,),
                                                      ),


                                                    ],
                                                  ),
                                                ),),

                                              Expanded(
                                                child: Container(
                                                  // color: Colors.amber,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.end,

                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 14),
                                                        child: Text(new String.fromCharCodes(new Runes('\u002470'),),style: kSecondaryStyle,),
                                                      ),

                                                    ],
                                                  ),
                                                ),),


                                            ],
                                          ),
                                        ),),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Card(
                                elevation:3,
                                child: Container(
                                  color: Colors.white,
                                  width: 210,
                                  height: 250,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex:2,
                                        child: Container(
                                          color: Colors.grey,
                                          child: Image(image: AssetImage('assets/watch3.jpg'),fit: BoxFit.cover,),
                                        ),),

                                      Expanded(
                                        child: Container(
                                          // color: Colors.black12,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex:2,
                                                child: Container(
                                                  // color: Colors.red,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('DW Watch',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('Silver Edition',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 20,left: 5),
                                                        child: Text('Price',style: kPrimaryStyle,),
                                                      ),


                                                    ],
                                                  ),
                                                ),),

                                              Expanded(
                                                child: Container(
                                                  // color: Colors.amber,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.end,

                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 14),
                                                        child: Text(new String.fromCharCodes(new Runes('\u0024100'),),style: kSecondaryStyle,),
                                                      ),

                                                    ],
                                                  ),
                                                ),),


                                            ],
                                          ),
                                        ),),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 15,right: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                elevation:3,
                                child: Container(
                                  color: Colors.white,
                                  width: 210,
                                  height: 250,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex:2,
                                        child: Container(
                                          color: Colors.grey,
                                          child: Image(image: AssetImage('assets/watch2.jpg'),fit: BoxFit.cover,),
                                        ),),

                                      Expanded(
                                        child: Container(
                                          // color: Colors.black12,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex:2,
                                                child: Container(
                                                  // color: Colors.red,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('DW Watch',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('Brown Edition',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 20,left: 5),
                                                        child: Text('Price',style: kPrimaryStyle,),
                                                      ),


                                                    ],
                                                  ),
                                                ),),

                                              Expanded(
                                                child: Container(
                                                  // color: Colors.amber,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.end,

                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 14),
                                                        child: Text(new String.fromCharCodes(new Runes('\u002470'),),style: kSecondaryStyle,),
                                                      ),

                                                    ],
                                                  ),
                                                ),),


                                            ],
                                          ),
                                        ),),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Card(
                                elevation:3,
                                child: Container(
                                  color: Colors.white,
                                  width: 210,
                                  height: 250,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex:2,
                                        child: Container(
                                          color: Colors.grey,
                                          child: Image(image: AssetImage('assets/watch3.jpg'),fit: BoxFit.cover,),
                                        ),),

                                      Expanded(
                                        child: Container(
                                          // color: Colors.black12,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex:2,
                                                child: Container(
                                                  // color: Colors.red,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('DW Watch',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('Silver Edition',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 20,left: 5),
                                                        child: Text('Price',style: kPrimaryStyle,),
                                                      ),


                                                    ],
                                                  ),
                                                ),),

                                              Expanded(
                                                child: Container(
                                                  // color: Colors.amber,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.end,

                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 14),
                                                        child: Text(new String.fromCharCodes(new Runes('\u0024100'),),style: kSecondaryStyle,),
                                                      ),

                                                    ],
                                                  ),
                                                ),),


                                            ],
                                          ),
                                        ),),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 15,right: 15),
                        child: Row(
                          children: [
                            Expanded(
                              child: Card(
                                elevation:3,
                                child: Container(
                                  color: Colors.white,
                                  width: 210,
                                  height: 250,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex:2,
                                        child: Container(
                                          color: Colors.grey,
                                          child: Image(image: AssetImage('assets/watch2.jpg'),fit: BoxFit.cover,),
                                        ),),

                                      Expanded(
                                        child: Container(
                                          // color: Colors.black12,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex:2,
                                                child: Container(
                                                  // color: Colors.red,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('DW Watch',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('Brown Edition',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 20,left: 5),
                                                        child: Text('Price',style: kPrimaryStyle,),
                                                      ),


                                                    ],
                                                  ),
                                                ),),

                                              Expanded(
                                                child: Container(
                                                  // color: Colors.amber,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.end,

                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 14),
                                                        child: Text(new String.fromCharCodes(new Runes('\u002470'),),style: kSecondaryStyle,),
                                                      ),

                                                    ],
                                                  ),
                                                ),),


                                            ],
                                          ),
                                        ),),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Card(
                                elevation:3,
                                child: Container(
                                  color: Colors.white,
                                  width: 210,
                                  height: 250,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        flex:2,
                                        child: Container(
                                          color: Colors.grey,
                                          child: Image(image: AssetImage('assets/watch3.jpg'),fit: BoxFit.cover,),
                                        ),),

                                      Expanded(
                                        child: Container(
                                          // color: Colors.black12,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex:2,
                                                child: Container(
                                                  // color: Colors.red,
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('DW Watch',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 5),
                                                        child: Text('Silver Edition',style: kTertiaryStyle,),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 20,left: 5),
                                                        child: Text('Price',style: kPrimaryStyle,),
                                                      ),


                                                    ],
                                                  ),
                                                ),),

                                              Expanded(
                                                child: Container(
                                                  // color: Colors.amber,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.end,

                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(bottom: 14),
                                                        child: Text(new String.fromCharCodes(new Runes('\u0024100'),),style: kSecondaryStyle,),
                                                      ),

                                                    ],
                                                  ),
                                                ),),


                                            ],
                                          ),
                                        ),),

                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),




                    ],
                  ),
                ),
              ),),
            ],
          ),
        ),
      ),
    );
  }
  _bottomSheet(context) {
    showModalBottomSheet(context: context, builder: (BuildContext c) {
      return Container(height: 280,
        margin: EdgeInsets.only(left: 15),
        child: Column(
          children: [
            Row(children: [
              Text('Filter',style: TextStyle(color: forthcolor,),),

            ],),
            Row(children: [
              Text('Sort the product based on filter',style: kPrimaryStyle,),

            ],),
            Container(
              height: 30,
              child: Column(
                children: [
                  Divider(
                    thickness: 2,
                    color: Colors.grey,

                  ),
                ],
              ),
            ),
            Row(children: [
              Icon(FontAwesomeIcons.handHolding),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Popular',style: kPrimaryStyle,),
              )

            ],),
            Container(
              height: 30,
              child: Column(
                children: [
                  Divider(
                    thickness: 2,
                    color: Colors.grey,

                  ),
                ],
              ),
            ),
            Row(children: [
              Icon(Icons.arrow_upward_sharp),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Price Low to high',style: kPrimaryStyle,),
              )

            ],),
            Container(
              height: 30,
              child: Column(
                children: [
                  Divider(
                    thickness: 2,
                    color: Colors.grey,

                  ),
                ],
              ),
            ),
            Row(children: [
              Icon(Icons.arrow_downward_rounded),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Price high to low',style: kPrimaryStyle,),
              )

            ],),
            Container(
              height: 30,
              child: Column(
                children: [
                  Divider(
                    thickness: 2,
                    color: Colors.grey,

                  ),
                ],
              ),
            ),
          ],
        ),
      );


    }
    );
  }
}
