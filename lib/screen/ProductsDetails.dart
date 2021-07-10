import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ecommerce_app/data/const.dart';
import 'package:carousel_slider/carousel_slider.dart';


class productsdetails extends StatefulWidget {
  static String id = 'ProductsDetails';
  @override
  _productsdetailsState createState() => _productsdetailsState();
}

class _productsdetailsState extends State<productsdetails> {

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
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,

          home: Scaffold(
            resizeToAvoidBottomInset: false, // set it to false

            backgroundColor: backgroundcolor,

            appBar: AppBar(
              backgroundColor: backgroundcolor,
              title: Center(
                child: Text('Details',style: kSecondaryStyle,),
              ),
              bottom: TabBar(
                labelColor: secondarycolor,
                unselectedLabelColor: primarycolor,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: tertiarycolor),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Overview"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("Related"),
                    ),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [

                Column(
                  children: [
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

                    Container(
                      margin: EdgeInsets.only(left: 18),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text('Audio Beat Studio3',style: kSecondaryStyle,),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Container(
                  child: Text('zzzzz'),
                ),

              ],
            ),
          ),

        ),
      ),

    );
  }
}
