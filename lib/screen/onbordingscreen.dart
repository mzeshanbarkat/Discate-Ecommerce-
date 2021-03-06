import 'package:ecommerce_app/Signup.dart';
import 'package:flutter/material.dart';
//import 'package:redlines/screens/homeMessageBar.dart';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce_app/data/const.dart';
import 'package:ecommerce_app/data/data.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';

class Bording extends StatefulWidget {
  static String Id = "onbordingscreen";
  @override
  _BordingState createState() => _BordingState();
}

class _BordingState extends State<Bording> {

  List<SliderModel> mySLides = new List<SliderModel>();
  int slideIndex = 0;
  PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? primarycolor : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mySLides = getSlides();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xff3C8CE7), const Color(0xff00EAFF)])),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height - 100,
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                slideIndex = index;
              });
            },
            children: <Widget>[
              SlideTile(
                imagePath: mySLides[0].getImageAssetPath(),
                title: mySLides[0].getTitle(),
                desc: mySLides[0].getDesc(),
              ),
              SlideTile(
                imagePath: mySLides[1].getImageAssetPath(),
                title: mySLides[1].getTitle(),
                desc: mySLides[1].getDesc(),
              ),
              SlideTile(
                imagePath: mySLides[2].getImageAssetPath(),
                title: mySLides[2].getTitle(),
                desc: mySLides[2].getDesc(),
              ),
              SlideTile(
                imagePath: mySLides[3].getImageAssetPath(),
                title: mySLides[3].getTitle(),
                desc: mySLides[3].getDesc(),
              ),
             SlideTile(
               imagePath: mySLides[4].getImageAssetPath(),
               title: mySLides[4].getTitle(),
               desc: mySLides[4].getDesc(),
             ),
            ],
          ),
        ),
        bottomSheet: slideIndex != 4 ? Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                onPressed: (){
                  controller.animateToPage(4, duration: Duration(milliseconds: 400), curve: Curves.linear);
                },
                splashColor: Colors.blue[50],
                child: Text(
                  "SKIP",
                  style: GoogleFonts.openSans(color: secondarycolor,fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    for (int i = 0; i < 5 ; i++) i == slideIndex ? _buildPageIndicator(true): _buildPageIndicator(false),
                  ],),
              ),
              FlatButton(
                onPressed: (){
                  print("this is slideIndex: $slideIndex");
                  controller.animateToPage(slideIndex + 1, duration: Duration(milliseconds: 500), curve: Curves.linear);
                },
                splashColor: Colors.blue[50],
                child: Text(
                  "NEXT",
                  style:GoogleFonts.openSans(color:secondarycolor,fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ): InkWell(
          onTap: () async{
            SharedPreferences pref= await SharedPreferences.getInstance();
            pref.setString('key', 'true');
            Navigator.pushAndRemoveUntil(
              context,

              MaterialPageRoute(
                builder: (BuildContext context) {
                  return signup();
                },
              ),
                  (r) => false,
            );
          },
          child: Container(
            height: Platform.isIOS ? 70 : 60,
            color: tertiarycolor,
            alignment: Alignment.center,
            child: Text(
              "GET STARTED NOW",
              style: GoogleFonts.openSans(color: Colors.white,fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}

class SlideTile extends StatelessWidget {
  String imagePath, title, desc;

  SlideTile({this.imagePath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            child: Image.asset(

                imagePath),
          ),
          SizedBox(
            height: 40,
          ),
          Text(title, textAlign: TextAlign.center,style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20
          ),),
          SizedBox(
            height: 20,
          ),
          Text(desc, textAlign: TextAlign.center,style: GoogleFonts.openSans(
              fontWeight: FontWeight.w500,
              fontSize: 14))
        ],
      ),
    );
  }
}

