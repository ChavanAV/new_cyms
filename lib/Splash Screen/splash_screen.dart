import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Login&Signup/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    _NavigateToHome();
  }

  _NavigateToHome() async{
    await Future.delayed(
        Duration(seconds: 1),

            (){}
    );
    Navigator.pushReplacement(

      context,MaterialPageRoute(builder: (context)=>LoginPage()),

    );
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
