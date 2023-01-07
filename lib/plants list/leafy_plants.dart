import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_cyms/Info%20Screens/leaf_info_screen.dart';
import '../All Classes & Lists/list_all_classes&list.dart';


class LeafyPlants extends StatefulWidget {
  const LeafyPlants({Key? key}) : super(key: key);

  @override
  State<LeafyPlants> createState() => _LeafyPlantsState();
}

class _LeafyPlantsState extends State<LeafyPlants> {

  TextEditingController tec = TextEditingController();

  List<LeafItems> items = leafitems;

  void Search(String query) {
    final suggestions = leafitems.where((item) {
      final newleafname = item.leafname.toLowerCase();
      final input = query.toLowerCase();
      return newleafname.contains(input);
    }).toList();

    setState(() => items = suggestions);
  }

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
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  floating: true,
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
                  backgroundColor: Colors.transparent,
                  expandedHeight: 100,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    title: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white.withOpacity(.7),
                      ),
                      child: TextField(
                        controller: tec,
                        onChanged: Search,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          labelText: "Search",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                AllLeafyItems(),
              ],
            )),
      ),
    );
  }

  Widget AllLeafyItems() => SliverToBoxAdapter(
        child: Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(0),
            itemCount: items.length,
            shrinkWrap: true,
            primary: false,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                mainAxisExtent: 230),
            itemBuilder: (context, index) => LeafyPlantsListItems(
              items: items[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LeafInfo(
                            leafitem: items[index],
                          ))),
            ),
          ),
        ),
      );
}
