import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_cyms/Login&Signup/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Screens/home_screen.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _isVisible = true;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController namecntrl = TextEditingController();
  TextEditingController passcntrl = TextEditingController();
  var l_userName;
  var l_userPass;

  void LogingetData() async {
    var shp = await SharedPreferences.getInstance();
    var username = shp.getString("Name");
    var pass = shp.getString("userPass");
    l_userName = namecntrl.text;
    l_userPass = passcntrl.text;

    if (formkey.currentState!.validate()) {
      if (l_userName == username && l_userPass == pass) {
        shp.setBool("isLogin", true);

        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => HomeScreen()));

      } else {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("No user found!!!",style: TextStyle(color: Colors.teal),),
            ));
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.transparent.withOpacity(.9),
                image: const DecorationImage(
                    image: AssetImage("assets/images/background.jpg"),fit: BoxFit.fill
                )
            ),
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

                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Container(
                        margin:const EdgeInsets.fromLTRB(30, 50, 30, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white.withOpacity(.7),
                        ),

                        child: TextFormField(
                          controller: namecntrl,
                          validator: (value) {
                            if(value!.isEmpty){
                              return "Enter user name";
                            }
                            else{
                              return null;
                            }
                          },
                            keyboardType: TextInputType.name,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                            fillColor: Colors.tealAccent,
                            labelText: "user name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    width: 7,
                                    color: Colors.white
                                ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(30, 50, 30, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white.withOpacity(.7),
                        ),

                        child: TextFormField(
                          controller: passcntrl,
                          validator: (value) {
                            if(value!.isEmpty){
                              return "Enter Password";
                            }
                            else{
                              return null;
                            }
                          },
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: true, decimal: false),
                          obscureText: _isVisible,
                          cursorColor: Colors.black,
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

                        ),
                      ),
                    ],
                  ),
                ),

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
                      onPressed: LogingetData,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
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
      ),
    );
  }
}
