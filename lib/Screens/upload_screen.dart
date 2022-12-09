import 'package:flutter/material.dart';
import 'package:new_cyms/All%20Classes%20&%20Lists/list_all_classes&list.dart';

class Upload extends StatelessWidget {
  final LeafItems leafitems;
  final VelItems velitems;
  final FruitItems fruititems;
  final kdDhanyaItems kditems;
  final OrchardItems orcharditems;
  const Upload({
    Key? key,
    required this.leafitems,
    required this.velitems,
    required this.fruititems,
    required this.kditems,
    required this.orcharditems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(.9),
          image: const DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
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
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 300,
                width: double.maxFinite,
                color: Colors.transparent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image(
                    image: NetworkImage(leafitems.leafimage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(.9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      leafitems.leafname,
                      style: TextStyle(fontSize: 26, color: Colors.black),
                    ),
                    RichText(
                        text: TextSpan(children: [
                      const TextSpan(
                          text: "एकर:",
                          style: TextStyle(fontSize: 26, color: Colors.black)),
                          TextSpan(
                            text: leafitems.leafarea,
                            style: const TextStyle(fontSize: 26,color: Colors.black
                            ),
                          ),
                    ])),
                    Row(
                      children: [
                        const Icon(
                            Icons.currency_rupee,
                            size: 25, color: Colors.black
                        ),
                        Text(
                          leafitems.leafrate,
                          style: const TextStyle(fontSize: 26, color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(.9),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "व्यवस्थापन",
                        style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w600)
                      ),
                      const TextSpan(
                          text: "\n\nजमीन:\n",
                          style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600)
                      ),
                      TextSpan(
                        text: leafitems.leafland,style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18)
                      ),
                      const TextSpan(
                          text: "\n\nहवामान:\n",
                          style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600)
                      ),
                      TextSpan(
                          text: leafitems.leafenv,style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18)
                      ),
                      const TextSpan(
                          text: "\n\nलागवड पध्दुत:\n",
                          style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600)
                      ),
                      TextSpan(
                          text: leafitems.leafpreni,style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18)
                      ),
                      const TextSpan(
                          text: "\n\nसुधारित जाती:\n",
                          style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600)
                      ),
                      TextSpan(
                          text: leafitems.leafvarity,style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18)
                      ),
                      const TextSpan(
                          text: "\n\nखत व पाणी व्यवस्थापन:\n",
                          style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600)
                      ),
                      TextSpan(
                          text: leafitems.leafsupliment,style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18)
                      ),
                      const TextSpan(
                          text: "\n\nकिड व रोग:\n",
                          style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600)
                      ),
                      TextSpan(
                          text: leafitems.leafdeses,style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18)
                      ),
                      const TextSpan(
                          text: "\n\nकाढणी व उत्पादन:\n",
                          style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600)
                      ),
                      TextSpan(
                          text: leafitems.leafyield,style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18)
                      )
                    ]
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
