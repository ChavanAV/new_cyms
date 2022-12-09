import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_cyms/Screens/direct_upload_screen.dart';
import 'package:new_cyms/Screens/upload_screen.dart';
import '../All Classes & Lists/list_all_classes&list.dart';
import '../Info/my_app_info.dart';
import '../Login&Signup/login_page.dart';
import '../plants list/bag_plants.dart';
import '../plants list/fruit_plants.dart';
import '../plants list/kd_dhanya_plants.dart';
import '../plants list/leafy_plants.dart';
import '../plants list/vel_plants.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var List_Fix_Count=5;
  String User_Name="Akshay";
  String User_Mail="Way To Horizon";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(.9),
            image: const DecorationImage(
                image: AssetImage("assets/images/background.jpg"),
                fit: BoxFit.fill)),
        child: Scaffold(
            backgroundColor: Colors.transparent.withOpacity(.5),
            drawer: Drawer(
              backgroundColor: Colors.blue.shade50,
              elevation: 10,
              width: 250,
              shape: const Border(right: BorderSide(color: Colors.green)),
              child: ListView(children: [
                UserAccountsDrawerHeader(
                  accountName: Text(User_Name),
                  accountEmail: Text(User_Mail),
                  currentAccountPicture: const CircleAvatar(
                    backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("assets/images/background.jpg"),
                    ),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                  ),
                  margin: EdgeInsets.zero,
                ),
                ListTile(
                  onTap: () {
                    showDialog(context: context, builder: (context) {
                      return Container(
                        height: 400,
                        width: 111,
                        child: AlertDialog(
                          backgroundColor: Colors.blue.shade50,
                          title: const Text("My Profile"),
                          content: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text("Name : "),
                                  Text(User_Name),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const[
                                   Text("Mobile Number : "),
                                  Text("8805855080"),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Text("Email : "),
                                  Text(User_Mail),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },);
                  },
                  leading: Icon(Icons.person),
                  title: Text("My Profile"),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyAppInfo()));
                  },
                  leading: Icon(Icons.privacy_tip_outlined),
                  title: Text("Privacy"),
                  shape: Border(
                    top: BorderSide(color: Colors.black12)
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  leading: const Icon(Icons.logout),
                  title: const Text("Log Out"),
                  shape: const Border(
                      top: BorderSide(color: Colors.black12),
                      bottom:BorderSide(color: Colors.black12)
                  ),
                ),
              ]),
            ),
            appBar: AppBar(
              leading: Builder(
                  builder: (context) => IconButton(
                        splashColor: Colors.orange,
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage("assets/images/background.jpg"),
                        ),
                      )),
              title: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  splashColor: Colors.orange,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyAppInfo()));
                  },
                  child: const Text("शेती सर्कल",
                      style: TextStyle(fontSize: 25, color: Colors.white))),
              actions: [
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.7),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey)),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    splashColor: Colors.orange,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DirectUploadScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text("माहीती पाठवा",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          Icon(Icons.file_upload_outlined,
                              size: 20, color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                )
              ],
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text("पालेभाज्या",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 26, color: Colors.white)),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 270,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: List_Fix_Count,
                      itemBuilder: (context, index) =>
                          LeafyPlantsListItems(
                            leafitems: leafitems[index],
                              press:()=>Navigator.push(
                                  context, MaterialPageRoute(
                                  builder: (context)=>Upload(
                                    velitems: velitems[index],
                                    leafitems: leafitems[index],
                                    fruititems: fruititems[index],
                                    kditems: kditems[index],
                                    orcharditems: orcharditems[index],
                                  )
                                )
                              ),

                          ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LeafyPlants()));
                          },
                          child: const Text(
                            "सर्व पहा",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          )),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1.5,
                    height: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text("वेल वर्गीय भाज्या",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 26, color: Colors.white)),
                  ),
                  SizedBox(
                      height: 270,
                      width: double.maxFinite,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: List_Fix_Count,
                        itemBuilder: (context, index) =>
                            VelVargPlantsListItems(
                                    velitems: velitems[index],
                                    press:()=>Navigator.push(
                                        context, MaterialPageRoute(
                                        builder: (context)=>Upload(
                                          velitems: velitems[index],
                                          leafitems: leafitems[index],
                                          fruititems: fruititems[index],
                                          kditems: kditems[index],
                                          orcharditems: orcharditems[index],
                                        )
                                    )
                                    ),

                                  ),
                            ),
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VelPlants()));
                          },
                          child: const Text(
                            "सर्व पहा",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          )),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1.5,
                    height: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text("फळभाज्या",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 26, color: Colors.white)),
                  ),
                  SizedBox(
                      height: 270,
                      width: double.maxFinite,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: List_Fix_Count,
                        itemBuilder: (context, index) =>
                            FruitPlantsListItems(
                              fruititems: fruititems[index],
                              press:()=>Navigator.push(
                                  context, MaterialPageRoute(
                                  builder: (context)=>Upload(
                                    velitems: velitems[index],
                                    leafitems: leafitems[index],
                                    fruititems: fruititems[index],
                                    kditems: kditems[index],
                                    orcharditems: orcharditems[index],
                                  )
                              )
                              ),
                            ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FruitPlants()));
                          },
                          child: const Text(
                            "सर्व पहा",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          )),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1.5,
                    height: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text("कडधाण्य",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 26, color: Colors.white)),
                  ),
                  SizedBox(
                      height: 270,
                      width: double.maxFinite,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: List_Fix_Count,
                        itemBuilder: (context, index) =>
                            KadDhanyaPlantsListItems(
                              kditems: kditems[index],
                              press: ()=>Navigator.push(
                                  context, MaterialPageRoute(
                                  builder: (context)=>Upload(
                                    velitems: velitems[index],
                                    leafitems: leafitems[index],
                                    fruititems: fruititems[index],
                                    kditems: kditems[index],
                                    orcharditems: orcharditems[index],
                                  )
                              )
                              ),
                            ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => KdDhanyaPlants()));
                          },
                          child: const Text(
                            "सर्व पहा",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          )),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1.5,
                    height: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Text("बागायत",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 26, color: Colors.white)),
                  ),
                  SizedBox(
                      height: 270,
                      width: double.maxFinite,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: List_Fix_Count,
                        itemBuilder: (context, index) =>
                            BagPlantsListItems(
                              orcharditems: orcharditems[index],
                              press: ()=>Navigator.push(
                                  context, MaterialPageRoute(
                                  builder: (context)=>Upload(
                                    velitems: velitems[index],
                                    leafitems: leafitems[index],
                                    fruititems: fruititems[index],
                                    kditems: kditems[index],
                                    orcharditems: orcharditems[index],
                                  )
                              )
                              ),
                            ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrchardPlants()));
                          },
                          child: const Text(
                            "सर्व पहा",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          )),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 1.5,
                    height: 1,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}


