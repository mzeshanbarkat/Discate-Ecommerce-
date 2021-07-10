import 'package:ecommerce_app/screen/ProductSearch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/data/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class profile extends StatefulWidget {
  static String id = 'Profile';
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      resizeToAvoidBottomInset: false, // set it to false

      backgroundColor: backgroundcolor,

      appBar: AppBar(

        title: Center(child: Text('Profile',style: kSecondaryStyle,)),
      ),

      body: Container(
        child: Column(
          children: [
            Expanded(child: Container(
              // color: Colors.red,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 60,top: 50),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/avter.jpg'),
                              radius: 50,
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 50,left: 12),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jane Doe',style: kSecondaryStyle,),
                              SizedBox(height: 5,),
                              Text('janedoe@outlook.com',style: kPrimaryStyle,),

                              SizedBox(height: 15,),
                              Container(
                                width: 110,
                                height: 23,
                                decoration: BoxDecoration(
                                  // color: Colors.blue,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: primarycolor,
                                  ),
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Edit Profile',style: kPrimaryStyle,)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),


                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        // color: Colors.green,
                        width: 320,
                        height: 350,
                        child: Column(
                          children: [
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(icon: Icon(FontAwesomeIcons.list,color: primarycolor,),
                                  onPressed: (){
                                    setState(() {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>productsearch()),);

                                    });
                                  },

                                ),
                                Text('My Orders',style: kPrimaryStyle,),

                                SizedBox(width: 174,),
                                Container(
                                  width: 23,
                                  height: 23,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: IconButton(icon: Icon(Icons.arrow_forward_ios),iconSize: 9,),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Divider(
                                  thickness: 2,
                                ),
                              ],
                            ),

                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(icon: Icon(Icons.settings,color: primarycolor,)
                                ),
                                Text('Account Settings',style: kPrimaryStyle,),

                                SizedBox(width: 130,),
                                Container(
                                  width: 23,
                                  height: 23,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: IconButton(icon: Icon(Icons.arrow_forward_ios),iconSize: 9,),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Divider(
                                  thickness: 2,
                                ),
                              ],
                            ),

                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(icon: Icon(Icons.person_outline,color: primarycolor,)
                                ),
                                Text('Manage Addresses',style: kPrimaryStyle,),

                                SizedBox(width: 115,),
                                Container(
                                  width: 23,
                                  height: 23,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: IconButton(icon: Icon(Icons.arrow_forward_ios),iconSize: 9,),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Divider(
                                  thickness: 2,
                                ),
                              ],
                            ),

                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(icon: Icon(Icons.email_outlined,color: primarycolor,)
                                ),
                                Text('Contact Us',style: kPrimaryStyle,),

                                SizedBox(width: 166,),
                                Container(
                                  width: 23,
                                  height: 23,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: IconButton(icon: Icon(Icons.arrow_forward_ios),iconSize: 9,),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Divider(
                                  thickness: 2,
                                ),
                              ],
                            ),

                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(icon: Icon(Icons.login_outlined,color: primarycolor,)
                                ),
                                Text('Logout',style: kPrimaryStyle,),

                                SizedBox(width: 190,),
                                Container(
                                  width: 23,
                                  height: 23,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: IconButton(icon: Icon(Icons.arrow_forward_ios),iconSize: 9,),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Divider(
                                  thickness: 2,
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
            ),),


          ],
        ),
      ),

    ),);
  }
}
