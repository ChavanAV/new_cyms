import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppInfo extends StatelessWidget {
  const MyAppInfo({Key? key}) : super(key: key);

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
        backgroundColor: Colors.transparent.withOpacity(.7),
        appBar: AppBar(
          centerTitle: true,
          title: Text("शेती सर्कल",style: TextStyle(fontSize: 25, color: Colors.white)),
          backgroundColor: Colors.transparent,
          leading: Builder(
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
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: const Text("fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
              "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
            "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
            "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
            "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N""fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N"
                "fgsdgfdg gdsfg sdfg dfgsd ghsdhd \n fdgdfgdsgdsgdsgdgdgdg\n"
                "gsdgdgdgfdfgdfgdfgdsfgdfgdgdgdgdgdd\n"
                "dasfsdfsadfsdfsdfsdfasfsfsfsafsfsfsf\n"
                "asfdsfsfsdfsdfsfsfsfsfGTGEFAFAS\N",
              
                style: TextStyle(color: Colors.white),
                ),
          ),
        ),
      ),
    );
  }
}
