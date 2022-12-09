import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../All Classes & Lists/list_all_classes&list.dart';
import '../Screens/direct_upload_screen.dart';
import '../Screens/upload_screen.dart';

class KdDhanyaPlants extends StatefulWidget {
  const KdDhanyaPlants({Key? key}) : super(key: key);

  @override
  State<KdDhanyaPlants> createState() => _KdDhanyaPlantsState();
}

class _KdDhanyaPlantsState extends State<KdDhanyaPlants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
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
            backgroundColor: Colors.orange.withOpacity(.7),
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              background: const Image(
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_xvF2f1slb3L0x3HxGO45eHMSkEH05-73Aw&usqp=CAU"),
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              title: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white.withOpacity(.7),
                ),
                child: const TextField(
                  decoration: InputDecoration(
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
      ),
    );
  }

  Widget AllLeafyItems() => SliverToBoxAdapter(
    child: Container(
      decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(.9),
          image: const DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.fill)),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: kditems.length,
        shrinkWrap: true,
        primary: false,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            mainAxisExtent: 250),
        itemBuilder: (context, index) => KadDhanyaPlantsListItems(
          kditems: kditems[index],
          press: () => Navigator.push(
              context, MaterialPageRoute(builder: (context)=>Upload(
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
  );
}
