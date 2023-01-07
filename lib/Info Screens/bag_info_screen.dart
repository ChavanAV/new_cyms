import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:new_cyms/All%20Classes%20&%20Lists/list_all_classes&list.dart';

import '../Screens/home_screen.dart';

class BagInfo extends StatelessWidget {
  final BagItems orcharditems;
  const BagInfo({
    Key? key,
    required this.orcharditems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    GlobalKey<FormState> formkey = GlobalKey<FormState>();

    void valid() {
      if (formkey.currentState!.validate()) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("खात्री करा"),
              actions: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.red)),
                      child: const Text("रद्द करा"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.green)),
                      child: const Text("पाठवा"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                    )
                  ],
                )
              ],
            ));
      } else {
        return;
      }
    }

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
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15)
                        ),
                        color: Colors.grey.withOpacity(.9),
                      ),
                      margin: const EdgeInsets.only(left: 10),
                      child: DChartBar(
                        data: [
                          {
                            'id': 'Bar',
                            'data': [
                              {
                                'domain': orcharditems.orchardname,
                                'measure': orcharditems.orchardarea,
                              },

                            ],
                          },
                        ],
                        animate: true,
                        barValue: (barData, index) {
                          return orcharditems.orchardarea.toString();
                        },
                        borderWidth: 1,
                        measureAxisTitleColor: Colors.black,
                        showMeasureLine: true,
                        showDomainLine: true,
                        borderColor: Colors.black,
                        domainLabelFontSize: 26,
                        domainLabelColor: Colors.black,
                        barValuePosition: BarValuePosition.inside,
                        barValueFontSize: 22,
                        domainLabelPaddingToAxisLine: 20,
                        axisLineTick: 2,
                        axisLinePointTick: 2,
                        axisLinePointWidth: 10,
                        axisLineColor: Colors.black,
                        measureLabelPaddingToAxisLine: 15,
                        barColor: (barData, index, id) => Colors.orange,
                        showBarValue: true,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 300,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(15),
                            topRight: Radius.circular(15)
                        ),
                        color: Colors.grey.withOpacity(.9),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 170,
                            color: Colors.transparent,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image(
                                image: NetworkImage(orcharditems.orchardimage),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            height: 50,
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.7),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.grey)),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(15),
                              splashColor: Colors.orange,
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    backgroundColor: Colors.black.withOpacity(.7),
                                    title: const Text(
                                      "माहीती पाठवा",
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.white),
                                    ),
                                    actions: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                              style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(
                                                      const RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.only(
                                                              topRight: Radius.circular(10),
                                                              bottomLeft: Radius.circular(10)))),
                                                  backgroundColor: const MaterialStatePropertyAll(
                                                      Colors.red)),
                                              clipBehavior: Clip.antiAlias,
                                              onPressed:() {
                                                Navigator.pop(context);
                                              },
                                              child: const Text("रद्द करा",style: TextStyle(fontSize: 22,))),
                                          ElevatedButton(
                                              style: ButtonStyle(
                                                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.only(
                                                          topRight:
                                                          Radius.circular(
                                                              10),
                                                          bottomLeft:
                                                          Radius.circular(
                                                              10)))),
                                                  backgroundColor:
                                                  const MaterialStatePropertyAll(
                                                      Colors
                                                          .green)),
                                              clipBehavior: Clip.antiAlias,
                                              onPressed:valid,
                                              child: const Text("पाठवा",style: TextStyle(fontSize: 22,))),
                                        ],
                                      )
                                    ],
                                    content: SingleChildScrollView(
                                      child: Container(
                                        height: 500,
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceEvenly,
                                              children: [
                                                const Expanded(
                                                  child: Text(
                                                    " पिक",
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: 55,
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(15),
                                                        color: Colors.white
                                                            .withOpacity(.7),
                                                        border: Border.all(
                                                            color: Colors
                                                                .white)),
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(top: 10),
                                                      child: Text(orcharditems.orchardname,
                                                          textAlign: TextAlign.center,
                                                          style: const TextStyle(
                                                            fontFamily: "Marathi",
                                                            fontSize: 22,
                                                          )),
                                                    ),
                                                  ),
                                                ),
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
                                                        child: Text(
                                                            " पिकाचे क्षेत्रफळ भरा",
                                                            style: TextStyle(
                                                                fontSize: 22,
                                                                color: Colors
                                                                    .white)),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(15),
                                                            color: Colors.white.withOpacity(.7),
                                                          ),
                                                          child: TextFormField(
                                                            style: const TextStyle(color: Colors.black),
                                                            keyboardType: TextInputType.number,
                                                            decoration: InputDecoration(
                                                                border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(15),
                                                                    borderSide: const BorderSide(
                                                                      color: Colors.white,
                                                                    )
                                                                ),
                                                                labelText: "गुंठे"),
                                                            validator: (val) {
                                                              if (val!.isEmpty && !RegExp(r'^[1-9]').hasMatch(val)) {
                                                                return "क्षेत्रफळ भरा";
                                                              }
                                                              else {
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
                                                        child: Text(
                                                            "पिकाचा सध्याचा दर भरा",
                                                            style: TextStyle(
                                                                fontSize: 22,
                                                                color: Colors.white)),
                                                      ),
                                                      Expanded(
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(15),
                                                            color: Colors.white.withOpacity(.7),
                                                          ),
                                                          child: TextFormField(
                                                            style: const TextStyle(
                                                                color: Colors.black),
                                                            keyboardType: TextInputType.number,
                                                            decoration: InputDecoration(
                                                                border: OutlineInputBorder(
                                                                    borderRadius: BorderRadius.circular(15),
                                                                    borderSide: const BorderSide(color: Colors.white)),
                                                                labelText: "रुपए"),
                                                            validator: (val) {
                                                              if (val!.isEmpty || !RegExp(r'^[0-9]').hasMatch(val)) {
                                                                return "दर भरा";
                                                              } else {
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
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),),);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  children: const [
                                    Text("माहीती पाठवा",
                                        style: TextStyle(
                                            fontFamily: "Marathi",
                                            fontSize: 20,
                                            color: Colors.black)),
                                    Icon(Icons.file_upload_outlined,
                                        size: 20, color: Colors.black),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                // margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(.9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      orcharditems.orchardname,
                      style: const TextStyle(fontSize: 26, color: Colors.black),
                    ),
                    RichText(
                        text: TextSpan(children: [
                          const TextSpan(
                              text: "एकर:",
                              style: TextStyle(
                                  fontFamily: "Marathi",
                                  fontSize: 26,
                                  color: Colors.black)),
                          TextSpan(
                            text: orcharditems.orchardarea.toString(),
                            style: const TextStyle(fontFamily: "Marathi",fontSize: 26,color: Colors.black
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
                          orcharditems.orchardrate.toString(),
                          style: const TextStyle(fontFamily: "Marathi",fontSize: 26, color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
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
                                style: TextStyle(fontFamily: "Marathi",fontSize: 30,color: Colors.black,fontWeight: FontWeight.w600)
                            ),
                            const TextSpan(
                                text: "\n\nजमीन:\n",
                                style: TextStyle(fontFamily: "Marathi",fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600)
                            ),
                            TextSpan(
                                text: orcharditems.orchardland,style: const TextStyle(fontFamily: "Marathi",fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18)
                            ),
                            const TextSpan(
                                text: "\n\nहवामान:\n",
                                style: TextStyle(fontFamily: "Marathi",fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600)
                            ),
                            TextSpan(
                                text:orcharditems.orchardenv,style: const TextStyle(fontFamily: "Marathi",fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18)
                            ),
                            const TextSpan(
                                text: "\n\nलागवड पध्दुत:\n",
                                style: TextStyle(fontFamily: "Marathi",fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600)
                            ),
                            TextSpan(
                                text: orcharditems.orchardpreni,style: const TextStyle(fontFamily: "Marathi",fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18)
                            ),
                            const TextSpan(
                                text: "\n\nसुधारित जाती:\n",
                                style: TextStyle(fontFamily: "Marathi",fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600)
                            ),
                            TextSpan(
                                text: orcharditems.orchardvarity,style: const TextStyle(fontFamily: "Marathi",fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18)
                            ),
                            const TextSpan(
                                text: "\n\nखत व पाणी व्यवस्थापन:\n",
                                style: TextStyle(fontFamily: "Marathi",fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600)
                            ),
                            TextSpan(
                                text: orcharditems.orchardsupliment,style: const TextStyle(fontFamily: "Marathi",fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18)
                            ),
                            const TextSpan(
                                text: "\n\nकिड व रोग:\n",
                                style: TextStyle(fontFamily: "Marathi",fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600)
                            ),
                            TextSpan(
                                text: orcharditems.orcharddeses,style: const TextStyle(fontFamily: "Marathi",fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18)
                            ),
                            const TextSpan(
                                text: "\n\nकाढणी व उत्पादन:\n",
                                style: TextStyle(fontFamily: "Marathi",fontSize: 20,color: Colors.black,fontWeight: FontWeight.w600)
                            ),
                            TextSpan(
                                text: orcharditems.orchardyield,style: const TextStyle(fontFamily: "Marathi",fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18)
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
