import 'package:ecommerce_app/screen/Cart.dart';
import 'package:ecommerce_app/screen/Favourite.dart';
import 'package:ecommerce_app/screen/Home.dart';
import 'package:ecommerce_app/screen/Profile.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/data/const.dart';


class navigationbar extends StatefulWidget {
  static String id = 'BottomNavigation';
  @override
  _navigationbarState createState() => _navigationbarState();
}

class _navigationbarState extends State<navigationbar> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[

    home(),
    favourite(),
    cart(),
    profile(),




//    myProfile()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false, // set it to false

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: secondarycolor,
          iconSize: 25,
          unselectedItemColor: primarycolor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text('Home'),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              title: Text('Favourite'),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.local_grocery_store_outlined),
              title: Text('Card'),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text('Person'),
            ),

          ],
          currentIndex: _selectedIndex,
          selectedItemColor: forthcolor,
          onTap: _onItemTapped,
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),

      ),
    );
  }
}
