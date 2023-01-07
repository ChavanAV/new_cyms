import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Screens/home_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}
bool _isVisible=true;
class _SignUpState extends State<SignUp> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController namecntrl = TextEditingController();
  TextEditingController passcntrl = TextEditingController();
  TextEditingController phonecntrl = TextEditingController();


  void setUser() async {
    var shp = await SharedPreferences.getInstance();

    var Name = namecntrl.text;
    shp.setString("Name", Name);

    var passWord = passcntrl.text;
    shp.setString("userPass", passWord);

    if (formkey.currentState!.validate()) {
      Navigator.pop(context);
    }
    else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.transparent.withOpacity(.9),
          image:  const DecorationImage(
              image: AssetImage("assets/images/background.jpg"),fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => IconButton(
              splashColor: Colors.orange,
              icon: Icon(Icons.arrow_back),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

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
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          fillColor: Colors.tealAccent,
                          labelText: "User name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                width: 7,
                                color: Colors.white
                            ),
                          ),
                        ),
                        validator: (value) {
                          if(value!.isEmpty || value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]||[0-9]+$')
                                  .hasMatch(value!)){
                            return "Enter user name";
                          }
                          else{
                            return null;
                          }
                        },

                      ),
                    ),
                    Container(
                      margin:const EdgeInsets.fromLTRB(30, 50, 30, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(.7),
                      ),

                      child: TextFormField(
                        controller: phonecntrl,
                        validator: (value) {
                          if(value!.isEmpty ||
                              !RegExp(r'^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$')
                                  .hasMatch(value!)){
                            return "Enter phone number";
                          }
                          else{
                            return null;
                          }
                        },
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          fillColor: Colors.tealAccent,
                          labelText: "Phone number",
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
                        validator: (value) {
                          if(value!.isEmpty || !RegExp(r'^(?=.*?[a-z A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{5,}$')
                                  .hasMatch(value!)){
                            return "Enter Password";
                          }
                          else{
                            return null;
                          }
                        },
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
                    onPressed: setUser,
                    child: const Text("Sign Up",
                        style: TextStyle(
                          fontSize: 22,
                        )
                    )
                ),
              ),
            ],
          ),
        )
      ),
    );

  }
}
