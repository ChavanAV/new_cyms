import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Screens/home_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}
bool _isVisible=true;
class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
          image:  DecorationImage(
              image: AssetImage("assets/images/background.jpg"),fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          color: Colors.white.withOpacity(.7),
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin:const  EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    fillColor: Colors.tealAccent,
                    labelText: "Name",
                    helperText:"Enter Your Name" ,
                  ),
                  cursorColor: Colors.black,
                ),
              ),
              Container(
                margin:const  EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: TextFormField(
                  decoration:const  InputDecoration(
                      labelText: "E-mail or Mobile",
                      helperText:"Enter Your E-mail Address or Mobile number"
                  ),
                  obscureText: true,
                  cursorColor: Colors.black,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: " Set User Name",
                      helperText:"Enter Your User Name"
                  ),
                  obscureText: true,
                  cursorColor: Colors.black,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        icon: _isVisible ? const Icon(Icons.visibility) : Icon(Icons.visibility_off),
                      ),
                      labelText: " Set Password",
                      helperText:"Enter Your Password"
                  ),
                  obscureText: _isVisible,
                  cursorColor: Colors.black,
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
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
