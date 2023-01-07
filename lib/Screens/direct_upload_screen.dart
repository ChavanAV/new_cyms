import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class DirectUploadScreen extends StatefulWidget {
  const DirectUploadScreen({Key? key}) : super(key: key);

  @override
  State<DirectUploadScreen> createState() => _DirectUploadScreenState();
}

class _DirectUploadScreenState extends State<DirectUploadScreen> {

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  var vlauechoos;

  List listitems = [
    "कोथिंबीर",
    "मेथी",
    "शेपू",
    "पालक",
    "तांदूळसा",
    "चुक्का",
    "कलिंगड",
    "ककडी",
    "कारले",
    "खरबुज",
    "घेवडा",
    "भोपळा",
    "टोमॅटो",
    "वांगी",
    "मिरची",
    "कोबी",
    "फुलकोबी",
    "ढोबळी मिरची",
    "गहु",
    "ज्वारी",
    "मका",
    "उडीद",
    "हरभरा",
    "बाजरी",
    "डाळींब",
    "द्राक्ष",
    "ड्रॅगन फ्रूट",
    "लिंबू",
    "पेरु",
    "सिताफळ",
  ];

  bool check=false;

  void valid() {
    if(formkey.currentState!.validate()){
      showDialog(context: context, builder: (context)=>
      AlertDialog(
        title: const Text("खात्री करा"),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)
                ),
                child: const Text("रद्द करा"),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)
                ),
                child: const Text("पाठवा"),
                onPressed: (){
                  Navigator.pop(context);
                },
              )
            ],
          )
        ],
      )
      );
    }
    else {
        return;
      }

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(.9),
            image: const DecorationImage(
                image: AssetImage("assets/images/background.jpg"),fit: BoxFit.fill
            )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent.withOpacity(.5),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Builder(
                        builder: (context)=>IconButton(
                          splashColor: Colors.orange,
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30,
                        color: Colors.white,
                        onPressed: (){
                          Navigator.pop(context);
                        },
                    ),
                    ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Expanded(
                        child: Text(
                          " पिक निवडा",
                          style: TextStyle(fontSize: 22,color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 55,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white.withOpacity(.7),
                              border: Border.all(color: Colors.white)),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              elevation: 9,
                              dropdownColor: Colors.white.withOpacity(.9),
                              icon: const Icon(Icons.arrow_downward,color: Colors.black54),
                              style: const TextStyle(fontSize: 22, color: Colors.black87),
                              value: vlauechoos,
                              onChanged: (new_value) {
                                setState(() {
                                  vlauechoos = new_value;
                                  check=true;
                                });
                              },
                              items: listitems.map((valuitems) {
                                return DropdownMenuItem(
                                    value: valuitems, child: Text(valuitems));
                              }).toList(),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                              child:  Text(" पिकाचे क्षेत्रफळ भरा",
                                      style: TextStyle(fontSize: 22,color: Colors.white)),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white.withOpacity(.7),
                                ),
                                child: TextFormField(
                                  style: const TextStyle(
                                      color: Colors.black
                                  ),
                                  keyboardType: TextInputType.number,
                                  decoration:  InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide:const BorderSide(
                                          color: Colors.white,
                                        )
                                          // borderRadius: BorderRadius.circular(15),
                                          // borderSide: const BorderSide(color: Colors.white)
                                      ),
                                      labelText: "गुंठे"
                                  ),
                                  validator: (val){
                                    if(val!.isEmpty && !RegExp(r'^[1-9]').hasMatch(val)){
                                      return "क्षेत्रफळ भरा";
                                    }else{
                                      return null;
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            const Expanded(
                              child:  Text("पिकाचा सध्याचा दर भरा",
                                  style: TextStyle(fontSize: 22,color: Colors.white)),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white.withOpacity(.7),
                                ),
                                child: TextFormField(
                                  style: const TextStyle(
                                    color: Colors.black
                                  ),
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: BorderSide(color: Colors.white)
                                      ),
                                      labelText: "रुपए"
                                  ),
                                  validator: (val){
                                    if(val!.isEmpty || !RegExp(r'^[1-9]').hasMatch(val)){
                                      return "दर भरा";
                                    }else{
                                      return null;
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Container(
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
                              onPressed: (check) ? valid : null,
                              child: const Text("पाठवा",
                                  style: TextStyle(
                                    fontSize: 22,
                                  )
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
