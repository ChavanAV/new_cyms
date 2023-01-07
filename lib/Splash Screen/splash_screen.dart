import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_cyms/Screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Login&Signup/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    isLogin();
  }

  void isLogin() async {
    SharedPreferences shp = await SharedPreferences.getInstance();
    var islogin = shp.getBool("isLogin") ?? false;
    var username = shp.getString("Name");
    var usereamil = shp.getString("Email");

    if(islogin){
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(
          builder: (context)=>HomeScreen()
      ));
    });
    }
    else {
        Timer(Duration(seconds: 2), () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(
              builder: (context)=>LoginPage()
          ));
        });
      }


  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(.9),
          image: const DecorationImage(
              image: AssetImage("assets/images/background.jpg"),fit: BoxFit.fill
          )
      ),
      child: Scaffold(

        backgroundColor: Colors.transparent.withOpacity(.3),
      ),
    );
  }
}
