import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_cyms/Login&Signup/signup.dart';

import '../Screens/home_screen.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.transparent.withOpacity(.9),
              image: const DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),fit: BoxFit.fill
              )
          ),
          // height: double.infinity,
          // width: double.infinity,
          // decoration:const BoxDecoration(
          //     gradient: LinearGradient(
          //   begin: Alignment.topRight,
          //   end: Alignment.bottomLeft,
          //   colors: [
          //     Color(0x660ac18e),
          //     Color(0x9950ac18e),
          //     Color(0xcc5ac18e),
          //     Color(0xff6ac18e),
          //   ],
          // )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login Here",
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 32
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(.7),
                ),
                margin:const EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    fillColor: Colors.tealAccent,
                    labelText: "user name",
                    // helperText:"Enter user name" ,
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 7,
                            color: Colors.white
                        ),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  cursorColor: Colors.black,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(.7),
                ),
                margin: const EdgeInsets.fromLTRB(30, 50, 30, 0),
                child: TextFormField(
                  keyboardType: const TextInputType.numberWithOptions(
                      signed: true, decimal: false),
                  // validator:
                  decoration: InputDecoration(
                    errorStyle: const TextStyle(color: Colors.red),
                    fillColor: Colors.white,
                    suffixIconColor: Colors.black38,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isVisible = !_isVisible;
                        });
                      },
                      icon: _isVisible
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                    labelText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  obscureText: _isVisible,
                  cursorColor: Colors.black,
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.fromLTRB(30, 50, 30, 0),
              //   child: ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //           backgroundColor: Colors.teal,
              //           padding:
              //           const EdgeInsets.only(right: 40, left: 40)),
              //       onPressed: () {
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => HomeScreen()));
              //       },
              //       child:const Text("Login")),
              // ),

              Container(
                margin: const EdgeInsets.fromLTRB(30, 50, 30, 0),
                width: 200,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)
                                )
                            )),
                        backgroundColor: const MaterialStatePropertyAll(Colors.orange)
                    ),
                    clipBehavior: Clip.antiAlias,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                    child: const Text("Login",
                        style: TextStyle(
                          fontSize: 22,
                        )
                    )
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.maxFinite,
                color: Colors.white.withOpacity(.7),
                child: Row(
                  children: [
                    const Text("Don't have an account ?",
                        style: TextStyle(fontSize: 20)),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 22),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
