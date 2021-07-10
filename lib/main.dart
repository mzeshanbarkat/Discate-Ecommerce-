import 'package:ecommerce_app/BottomNavigation.dart';
import 'package:ecommerce_app/screen/Cart.dart';
import 'package:ecommerce_app/screen/Favourite.dart';
import 'package:ecommerce_app/screen/Home.dart';
import 'package:ecommerce_app/screen/ProductSearch.dart';
import 'package:ecommerce_app/screen/ProductsDetails.dart';
import 'package:ecommerce_app/screen/Profile.dart';
import 'package:ecommerce_app/screen/SplashScreen.dart';
import 'package:ecommerce_app/screen/onbordingscreen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/Login.dart';
import 'package:ecommerce_app/data/const.dart';
import 'package:ecommerce_app/Signup.dart';
import 'package:sizer/sizer.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizerUtil().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              // title: 'Sizer',
              theme: ThemeData(
                primarySwatch: Colors.blue,
                primaryColor: Colors.white,
              ),
              initialRoute: splashScreen.id,
              routes:<String, WidgetBuilder>{
                splashScreen.id:(context)=>splashScreen(),
                Bording.Id:(context)=>Bording(),
                login.id:(context)=>login(),
                signup.id:(context)=>signup(),
                navigationbar.id:(context)=>navigationbar(),
                home.id:(context)=>home(),
                favourite.id:(context)=>favourite(),
                cart.id:(context)=>cart(),
                profile.id:(context)=>profile(),
                productsearch.id:(context)=>productsearch(),
                productsdetails.id:(context)=>productsdetails(),


              },
            );
          },
        );
      },
    );
  }
}
