import 'package:ecommerce_app/BottomNavigation.dart';
import 'package:ecommerce_app/Signup.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/data/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';




class login extends StatefulWidget {
  static String id = 'Login';
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundcolor,

        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: backgroundcolor,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        color: backgroundcolor,
                        child: IconButton(icon: Icon(Icons.arrow_back_ios),
                          color: secondarycolor,
                          onPressed: (){
                            setState(() {
                              setState(() {
                                Navigator.pop(context);
                              });

                            });
                          },
                        ),

                      ),

                    ],
                  ),
                ),

                Column(
                  children: [
                    Container(
                      width: 250,
                      height: 220,
                      decoration: BoxDecoration(
                        color: backgroundcolor,
                        image: DecorationImage(image: AssetImage('assets/logo2.jpg',),fit: BoxFit.contain,alignment: Alignment.center),
                      ),
                    ),
                  ],
                ),


                Container(
                  color: backgroundcolor,
                  width: 450,
                  child: Column(
                    children: [
                      Card(
                        elevation: 2,
                        child: Container(
                          width: 350,
                          height: 70,
                          color: Colors.white,
                          child: Row(
                            children: [
                              SizedBox(width: 7,),
                              Icon(Icons.person),

                              SizedBox(width: 13,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('User Name/Email',style: kPrimaryStyle,),
                                  Text('mianzeshan@outlook.com'),

                                ],
                              ),



                            ],
                          ),
                        ),
                      ),


                      Card(
                        elevation: 2,
                        child: Container(
                          width: 350,
                          height: 70,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin:EdgeInsets.only(right: 8),
                                  child:   Icon(Icons.lock_open_outlined),

                                ),),

                              Expanded(
                                flex: 6,
                                child: Container(
// color: Colors.blue,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Password',style: kPrimaryStyle,),
                                      Text('****************'),
                                    ],
                                  ),
                                ),),

                              Expanded(

                                child: Container(
                                  child: Icon(Icons.remove_red_eye_outlined),
                                ),),

                            ],
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              margin:EdgeInsets.only(right:32),
                              child: Text('Forget Password?',style: TextStyle(color: Colors.pinkAccent,fontSize: 15,),)),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: RaisedButton(
                            color: tertiarycolor,
                            elevation: 4,
                            child:SizedBox(
                              width: 320,
                              height: 45,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex:5,
                                    child: Text('LOGIN',textAlign: TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.white),),
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    child: IconButton(icon: Icon(Icons.arrow_forward_ios),),
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
Navigator.push(context, MaterialPageRoute(builder: (context)=>navigationbar()),);

                            },

                          ),
                        ),

                        SizedBox(height: 12,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('or',style: TextStyle(color: tertiarycolor,fontFamily:  'Proxima Nova',),),
                              Text('Sign up with social account',style: kPrimaryStyle,),
                            ],
                          ),
                        ),

                        SizedBox(height: 30,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                child: IconButton(icon: Icon(FontAwesomeIcons.google),
                                  color: tertiarycolor,
                                  iconSize: 40,
                                  onPressed: (){
                                    setState(() {

                                    });
                                  },
                                ),
                              ),

                              Container(
                                child: IconButton(icon: Icon(FontAwesomeIcons.facebook),
                                  color: tertiarycolor,
                                  iconSize: 40,
                                  onPressed: (){
                                    setState(() {

                                    });
                                  },
                                ),
                              ),


                            ],
                          ),

                        ),

                        SizedBox(height: 30,),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  RichText(text: TextSpan(
                                    text: 'By creating an account,you agree to our',style: kPrimaryStyle,
                                  )),


                                  RichText(
                                    text: TextSpan(
                                        children:<TextSpan>[

                                          TextSpan(text: 'Terms',style: TextStyle(fontSize: 13,color: tertiarycolor)),
                                          TextSpan(text: ' of',style: TextStyle(fontSize: 10,color: tertiarycolor)),
                                          TextSpan(text: ' services',style: TextStyle(fontSize: 13,color: tertiarycolor)),

                                          TextSpan(text: ' and',style: kPrimaryStyle),
                                          TextSpan(text: ' Privacy',style: TextStyle(fontSize: 13,color: tertiarycolor)),
                                          TextSpan(text: ' Policy',style: TextStyle(fontSize: 15,color: tertiarycolor)),




                                        ]),),


                                ],
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

        ),

      ),

    );
  }
}
