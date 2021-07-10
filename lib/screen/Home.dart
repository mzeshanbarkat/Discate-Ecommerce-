import 'package:ecommerce_app/Login.dart';
import 'package:ecommerce_app/data/const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';




class home extends StatefulWidget {
  static String id = 'Home';
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  bool isSearching = false;
  bool _isHidden = true;

  int _current = 0;
  List imgList = [
    'assets/shoping.jpg',
    'assets/shop.jpg',
    'assets/sale.jpg',
    'assets/sale4.jpg',
    'assets/sale5.jpg',
    'assets/sale6.jpg',

  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }


  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false, // set it to false
      backgroundColor: backgroundcolor,

      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
              // color: Colors.pinkAccent,
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
                            child: IconButton(icon:Icon(Icons.widgets_outlined,color: primarycolor,),
                            onPressed:(){

                            },
                            ),
                          ),
                        ],
                      ),


                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        width: 300,
                        height: 220,
                        decoration: BoxDecoration(
                          // color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                          CarouselSlider(
                          height: 170.0,
                          initialPage: 0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          reverse: false,
                          enableInfiniteScroll: true,
                          autoPlayInterval: Duration(seconds: 2),
                          autoPlayAnimationDuration: Duration(milliseconds: 2000),
                          pauseAutoPlayOnTouch: Duration(seconds: 5),
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index) {
                            setState(() {
                              _current = index;
                            });
                          },
                            items: imgList.map((imgUrl) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                                    decoration: BoxDecoration(
                                      color: tertiarycolor,
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    child: Image.asset(
                                      imgUrl,
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),

                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: map<Widget>(imgList, (index, url) {
                                return Container(
                                  width: 10.0,
                                  height: 10.0,
                                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: _current == index ? tertiarycolor : primarycolor,
                                  ),
                                );
                              }),
                            ),
                          ],
                        ),
                      ),

                      Card(
                        elevation: 2,
                        child: Container(
                          width: 380,
                          height: 220,
                          color: Color(0xfff5f5f5),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text('Categories',style: kSecondaryStyle,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10,top: 10),
                                    child: Text('Shop More >>',style: kSecondaryStyle,),
                                  ),
                                ],
                              ),

                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Card(
                                      elevation: 2,
                                      child: Container(
                                        color: Colors.white,
                                        width: 140,
                                        height: 170,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                width: 100,
                                              height: 110,
                                              // color: Colors.blue,
                                                child: Image(image: AssetImage('assets/watch2.jpg'),fit: BoxFit.cover,),
                                            ),),

                                            Expanded(child: Container(
                                              // color: Colors.red,
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text('Dw watch',style: kPrimaryStyle,),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text(new String.fromCharCodes(new Runes('\u002449.99'),),style: kTertiaryStyle,),
                                                  ),

                                                ],
                                              ),
                                            ),),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Card(
                                      elevation: 2,
                                      child: Container(
                                        color: Colors.white,
                                        width: 140,
                                        height: 170,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                width: 100,
                                                height: 110,
                                                // color: Colors.blue,
                                                child: Image(image: AssetImage('assets/bag.jpg'),fit: BoxFit.cover,),
                                              ),),

                                            Expanded(child: Container(
                                              // color: Colors.red,
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text('Leather Bag',style: kPrimaryStyle,),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text(new String.fromCharCodes(new Runes('\u002470'),),style: kTertiaryStyle,),
                                                  ),

                                                ],
                                              ),
                                            ),),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Card(
                                      elevation: 2,
                                      child: Container(
                                        color: Colors.white,
                                        width: 140,
                                        height: 170,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                width: 100,
                                                height: 110,
                                                // color: Colors.blue,
                                                child: Image(image: AssetImage('assets/glasses.jpg'),fit: BoxFit.fill,),
                                              ),),

                                            Expanded(child: Container(
                                              // color: Colors.red,
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text('Raibon Glasses',style: kPrimaryStyle,),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text(new String.fromCharCodes(new Runes('\u002414.99'),),style: kTertiaryStyle,),
                                                  ),

                                                ],
                                              ),
                                            ),),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Card(
                                      elevation: 2,
                                      child: Container(
                                        color: Colors.white,
                                        width: 140,
                                        height: 170,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                width: 100,
                                                height: 110,
                                                // color: Colors.blue,
                                                child: Image(image: AssetImage('assets/jacket.jpg'),fit: BoxFit.cover,),
                                              ),),

                                            Expanded(child: Container(
                                              // color: Colors.red,
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text('Dark Blue Denim',style: kPrimaryStyle,),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text(new String.fromCharCodes(new Runes('\u002439.99'),),style: kTertiaryStyle,),
                                                  ),

                                                ],
                                              ),
                                            ),),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Card(
                                      elevation: 2,
                                      child: Container(
                                        color: Colors.white,
                                        width: 140,
                                        height: 170,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                width: 100,
                                                height: 110,
                                                // color: Colors.blue,
                                                child: Image(image: AssetImage('assets/headphone.jpg'),fit: BoxFit.cover,),
                                              ),),

                                            Expanded(child: Container(
                                              // color: Colors.red,
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text('Audio Beats',style: kPrimaryStyle,),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text(new String.fromCharCodes(new Runes('\u002430'),),style: kTertiaryStyle,),
                                                  ),

                                                ],
                                              ),
                                            ),),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Card(
                                      elevation: 2,
                                      child: Container(
                                        color: Colors.white,
                                        width: 140,
                                        height: 170,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                width: 100,
                                                height: 110,
                                                // color: Colors.blue,
                                                child: Image(image: AssetImage('assets/bag2.jpg'),fit: BoxFit.cover,),
                                              ),),

                                            Expanded(child: Container(
                                              // color: Colors.red,
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text('Red Leather Bag',style: kPrimaryStyle,),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text(new String.fromCharCodes(new Runes('\u002499.99'),),style: kTertiaryStyle,),

                                                  ),

                                                ],
                                              ),
                                            ),),

                                          ],
                                        ),
                                      ),
                                    ),





                                  ],
                                ),
                              ),
                            ],
                          ),

                        ),
                      ),

                      Card(
                        elevation: 2,
                        child: Container(
                          width: 380,
                          height: 220,
                          color: Color(0xfff5f5f5),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text('Recently Viewed',style: kSecondaryStyle,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10,top: 10),
                                    child: Text('Shop More >>',style: kSecondaryStyle,),
                                  ),
                                ],
                              ),

                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Card(
                                      elevation: 2,
                                      child: Container(
                                        color: Colors.white,
                                        width: 140,
                                        height: 170,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                width: 100,
                                                height: 110,
                                                // color: Colors.blue,
                                                child: Stack(
                                                  fit: StackFit.expand,
                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                  overflow: Overflow.clip,
                                                  children: [
                                                     Container(
                                                        child: Image(image: AssetImage('assets/iphone.jpg'),fit: BoxFit.contain,)
                                                     ),

                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 250,left: 85),
                                                      child: IconButton(icon: Icon(Icons.remove_red_eye),
                                                        color: primarycolor,
                                                        onPressed: (){
                                                          setState(() {
                                                            Navigator.pop(context);
                                                          });
                                                        },

                                                      ),
                                                    ),


                                                  ],
                                                ),
                                              ),),

                                            Expanded(child: Container(
                                              // color: Colors.red,
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text('Iphone 12',style: kPrimaryStyle,),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text(new String.fromCharCodes(new Runes('\u00241431'),),style: kTertiaryStyle,),
                                                  ),

                                                ],
                                              ),
                                            ),),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Card(
                                      elevation: 2,
                                      child: Container(
                                        color: Colors.white,
                                        width: 140,
                                        height: 170,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                width: 100,
                                                height: 110,
                                                // color: Colors.blue,
                                                child: Stack(
                                                  fit: StackFit.expand,
                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                  overflow: Overflow.clip,
                                                  children: [
                                                    Container(
                                                        child: Image(image: AssetImage('assets/watch3.jpg'),fit: BoxFit.contain,)
                                                    ),

                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 250,left: 85),
                                                      child: IconButton(icon: Icon(Icons.remove_red_eye),
                                                        color: primarycolor,
                                                        onPressed: (){
                                                          setState(() {
                                                            Navigator.push(context, MaterialPageRoute(builder: (context)=>login()),);

                                                          });
                                                        },

                                                      ),
                                                    ),


                                                  ],
                                                ),
                                              ),),

                                            Expanded(child: Container(
                                              // color: Colors.red,
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text('Seko Five',style: kPrimaryStyle,),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text(new String.fromCharCodes(new Runes('\u002489.99'),),style: kTertiaryStyle,),
                                                  ),

                                                ],
                                              ),
                                            ),),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Card(
                                      elevation: 2,
                                      child: Container(
                                        color: Colors.white,
                                        width: 140,
                                        height: 170,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                width: 100,
                                                height: 110,
                                                // color: Colors.blue,
                                                child: Stack(
                                                  fit: StackFit.expand,
                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                  overflow: Overflow.clip,
                                                  children: [
                                                    Container(
                                                        child: Image(image: AssetImage('assets/sofa.jpg'),fit: BoxFit.contain,)
                                                    ),

                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 250,left: 85),
                                                      child: IconButton(icon: Icon(Icons.remove_red_eye),
                                                        color: primarycolor,
                                                        onPressed: (){
                                                          setState(() {
                                                            Navigator.pop(context);
                                                          });
                                                        },

                                                      ),
                                                    ),


                                                  ],
                                                ),
                                              ),),

                                            Expanded(child: Container(
                                              // color: Colors.red,
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text('2 Seater Sofa',style: kPrimaryStyle,),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text(new String.fromCharCodes(new Runes('\u0024200'),),style: kTertiaryStyle,),
                                                  ),

                                                ],
                                              ),
                                            ),),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Card(
                                      elevation: 2,
                                      child: Container(
                                        color: Colors.white,
                                        width: 140,
                                        height: 170,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                width: 100,
                                                height: 110,
                                                // color: Colors.blue,
                                                child: Stack(
                                                  fit: StackFit.expand,
                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                  overflow: Overflow.clip,
                                                  children: [
                                                    Container(
                                                        child: Image(image: AssetImage('assets/jacket2.jpg'),fit: BoxFit.contain,)
                                                    ),

                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 250,left: 85),
                                                      child: IconButton(icon: Icon(Icons.remove_red_eye),
                                                        color: primarycolor,
                                                        onPressed: (){
                                                          setState(() {
                                                            Navigator.pop(context);
                                                          });
                                                        },

                                                      ),
                                                    ),


                                                  ],
                                                ),
                                              ),),

                                            Expanded(child: Container(
                                              // color: Colors.red,
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text('Black Leather jacket',style: kPrimaryStyle,),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text(new String.fromCharCodes(new Runes('\u002470'),),style: kTertiaryStyle,),
                                                  ),

                                                ],
                                              ),
                                            ),),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Card(
                                      elevation: 2,
                                      child: Container(
                                        color: Colors.white,
                                        width: 140,
                                        height: 170,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                width: 100,
                                                height: 110,
                                                // color: Colors.blue,
                                                child: Stack(
                                                  fit: StackFit.expand,
                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                  overflow: Overflow.clip,
                                                  children: [
                                                    Container(
                                                        child: Image(image: AssetImage('assets/perfume.jpg'),fit: BoxFit.contain,)
                                                    ),

                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 250,left: 85),
                                                      child: IconButton(icon: Icon(Icons.remove_red_eye),
                                                        color: primarycolor,
                                                        onPressed: (){
                                                          setState(() {
                                                            Navigator.pop(context);
                                                          });
                                                        },

                                                      ),
                                                    ),


                                                  ],
                                                ),
                                              ),),

                                            Expanded(child: Container(
                                              // color: Colors.red,
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text('Perfume',style: kPrimaryStyle,),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text(new String.fromCharCodes(new Runes('\u002449.99'),),style: kTertiaryStyle,),
                                                  ),

                                                ],
                                              ),
                                            ),),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Card(
                                      elevation: 2,
                                      child: Container(
                                        color: Colors.white,
                                        width: 140,
                                        height: 170,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                width: 100,
                                                height: 110,
                                                // color: Colors.blue,
                                                child: Stack(
                                                  fit: StackFit.expand,
                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                  overflow: Overflow.clip,
                                                  children: [
                                                    Container(
                                                        child: Image(image: AssetImage('assets/shoes.jpg'),fit: BoxFit.contain,)
                                                    ),

                                                    Container(
                                                      margin: EdgeInsets.only(bottom: 250,left: 85),
                                                      child: IconButton(icon: Icon(Icons.remove_red_eye),
                                                        color: primarycolor,
                                                        onPressed: (){
                                                          setState(() {
                                                            Navigator.pop(context);
                                                          });
                                                        },

                                                      ),
                                                    ),


                                                  ],
                                                ),
                                              ),),

                                            Expanded(child: Container(
                                              // color: Colors.red,
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text('Leather Shoes',style: kPrimaryStyle,),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5),
                                                    child: Text(new String.fromCharCodes(new Runes('\u002440'),),style: kTertiaryStyle,),
                                                  ),

                                                ],
                                              ),
                                            ),),

                                          ],
                                        ),
                                      ),
                                    ),







                                  ],
                                ),
                              ),
                            ],
                          ),

                        ),
                      ),


                    ],
                  ),
                ),

            ),),



          ],
        ),
      ),
    ),);
  }
}
