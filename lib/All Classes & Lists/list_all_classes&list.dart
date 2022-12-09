import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var rn = Random().nextInt(50).toString();

List<LeafItems> leafitems = [
  LeafItems(
    leafname: "कोथिंबीर",
    leafarea: rn,
    leafrate: "32",
    leafimage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReCuMtKgITAPL3wz4OvJgS2Mle_LP_rzzBqQ&usqp=CAU",
    leafland:
        "कोथिंबीरीच्या लागवडीसाठी मध्यम कसदार आणि मध्यम खोलीची जमीन योग्य असते. परंतु जमिनीत सेंद्रिय खते जास्त प्रमाणात असतील तर हलक्या किंवा भारी कसदार असलेल्या जमिनीत देखील कोथिंबीर लागवड करू शकतो.",
    leafdeses:
        'कोथिंबीर पिकावर रोग व किडीचा प्रादुर्भाव कमी प्रमाणात होतो. कधी कधी मर, भुरी या रोगांचा प्रार्दूभाव दिसतो. अशावेळी शिफारसीनुसार भुर रोगासाठी भुरी प्रतिबंधक वापरू शकतो तसेच पाण्यानत विरघळणारे गंधक वापरावे.',
    leafenv:
        'तसे पाहता कोथिंबीरीची लागवड ही कोणत्याही हवामानात करू शकतो परंतु अति पाऊस किंवा अति ऊन असेल तर कोथिंबीरीची वाढ हवी तशी होत नाही.\n'
        'आधी सांगितल्या प्रमाणे उन्हाळ्यात कोथिंबीरीची वाढ कमी असते पण मागणी जास्त असल्याने बाजारात भाव चांगला असतो त्यामुळे पाण्याची उपलब्दता असेल तर उन्हाळ्यात देखील कोथिंबीर लागवड करून जास्त नफा मिळवता येतो.',
    leafpreni: 'कोथिंबीरीची लागवड करण्याआधी जमीन नांगरून व कुळवून चांगली भुसभुशीत करून घ्यावी. जमिनीत एकरी ६ ते ८ टन चांगले कुजलेले शेणखत घालावे\n'
    'त्यानंतर ३×२ मीटर आकाराचे सपाट वाफे तयार करावे. आपण ह्या वाफ्यात बी फेकून लागवड करू शकतो. बी फेकून लागवड करताना बी सारखे पडेल ह्याची काळजी घ्यावी. बी फेकून लागवड करायची नसेल तर वाफयामध्ये  १५ से.मी. अंतरावर खुरप्याने ओळी पाडून त्यात बी पेरु शकतो.\n'
    'उन्हाळ्यात कोथिंबीर लागवड करायची असेल तर पेरणी आधीच वाफे भिजवा आणि मग वाफसा आल्यानंतर त्यात बी फेकून किंवा ओळी पाडून त्यात बी टाकून पेरणी करावी.\n'
    'कोथिंबीर लागवडीसाठी एकरी २५ ते ३५ किलो बियाणे लागते.\n'
    'लागवडी आधी धने हळुवार रगडुन फोडून घ्यावेत व त्यातील बी वेगळे करावे तसेच पेरणीपुर्वी धण्याचे बी भिजऊन मग गोणपाटात गुंडाळून ठेवावे. त्यातमुळे उगवण ८ ते १० दिवसात होते व कोथिंबीरीच्याे उत्पा दनात वाढ होते. त्याचसोबत काढणी देखील लवकर होते.',
    leafsupliment: "कोथिंबीर लागवडी आधी जमिनीत एकरी ६ ते ८ टन चांगले कुजलेले शेणखत घालावे. बी उगवल्यानंतर २० दिवसांनी हेक्टरी ४० किलो नत्र द्यावे. त्याचसोबत २५ दिवसांनी १०० लिटर पाण्यात २५० ग्रॅम युरिया मिसळून दोन फवारण्या करू शकतो ज्यामुळे कोथिंबीरीची वाढ चांगली होते.\n"
    "कोथिंबीर पिकाला नियमित पाणी गरजेचे असते. उन्हाळ्यामध्ये दर ५ दिवसांनी तर हिवाळ्यामध्ये ८-१० दिवसांनी पाणी द्यावे.",
    leafvarity: "व्ही 1, व्ही 2, को-१, डी-९२, डी-९४, जे २१४, के ४५, कोइमतूर-१, कोइमतूर-२, लाम सी.एस.- २, लाम सी.एस.- ४, स्थानिक वाण, जळगाव धना, वाई धना या कोथिंबीरीच्या, स्थासनिक आणि सुधारित जाती लागवडीसाठी वापरली जातात.",
    leafyield: "पेरणी नंतर ३५ ते ४० दिवसानी कोथिंबीर १५ ते २० से.मी. उंचीची होते त्यावेळी ती उपटून किंवा कापून काढणी करावी. पेरणीच्या २ महिन्यांनंतर कोथिंबीरीला फुले यायला सुरवात होते त्यामुळे त्या आधीच काढणी करणे महत्वाचे आहे.\n"
    "पावसाळी आणि हिवाळी हंगामात हिरव्या कोथिंबीरीचे एकरी ४ ते ६ टन उत्पादन मिळते तर उन्हााळी हंगामात हेच उत्पादन २.५ ते ३.५ टन मिळते. ",
  ),
  LeafItems(
    leafname: "मेथी",
    leafarea: rn,
    leafrate: "6",
    leafimage:
        "https://5.imimg.com/data5/LA/IU/MY-28014299/fresh-methy-bunch-500x500.jpg",
    leafyield: '',
    leafvarity: '',
    leafsupliment: '',
    leafpreni: '',
    leafenv: '',
    leafdeses: '',
    leafland: '',
  ),
  LeafItems(
    leafname: "शेपू",
    leafarea: rn,
    leafrate: "21",
    leafimage:
        "https://aapkiidukaan.com/wp-content/uploads/2021/07/dill-leaves.jpg",
    leafyield: '',
    leafvarity: '',
    leafsupliment: '',
    leafpreni: '',
    leafenv: '',
    leafdeses: '',
    leafland: '',
  ),
  LeafItems(
    leafname: "पालक",
    leafarea: rn,
    leafrate: "15",
    leafimage:
        "http://cdn.shopify.com/s/files/1/0451/1101/7626/products/spinachseeds.jpg?v=1603966262",
    leafyield: '',
    leafvarity: '',
    leafsupliment: '',
    leafpreni: '',
    leafenv: '',
    leafdeses: '',
    leafland: '',
  ),
  LeafItems(
    leafyield: '',
    leafvarity: '',
    leafsupliment: '',
    leafpreni: '',
    leafenv: '',
    leafdeses: '',
    leafland: '',
    leafname: "तांदूळसा",
    leafarea: rn,
    leafrate: "18",
    leafimage: "https://m.media-amazon.com/images/I/51sFRz5MSHL.jpg",
  ),
  LeafItems(
    leafyield: '',
    leafvarity: '',
    leafsupliment: '',
    leafpreni: '',
    leafenv: '',
    leafdeses: '',
    leafland: '',
    leafname: "चुक्का",
    leafarea: rn,
    leafrate: "12",
    leafimage: "http://specialtyproduce.com/sppics/12569.png",
  ),
];

List<VelItems> velitems = [
  const VelItems(
    velname: "कलिंगड",
    velarea: "2323",
    velrate: "23",
    velimage:
        "https://us.123rf.com/450wm/proslgn/proslgn1509/proslgn150900070/45556406-anguria-isolato-su-sfondo-bianco-.jpg?ver=6",
  ),
  const VelItems(
    velname: "ककडी",
    velarea: "7654",
    velrate: "32",
    velimage:
        "https://www.greenavity.com/uploads/product_image/158133390548.png",
  ),
  const VelItems(
    velname: "कारले",
    velarea: "2342",
    velrate: "87",
    velimage:
        "https://www.hi5mart.com/image/cache/catalog/Vegetables/Bitter-Gourd-750x750.jpg",
  ),
  const VelItems(
    velname: "खरबुज",
    velarea: "4553",
    velrate: "54",
    velimage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhJqt2dF6q9O36CMD9r9sqhpc48BYwIKVJAg&usqp=CAU",
  ),
  const VelItems(
    velname: "घेवडा",
    velarea: "3424",
    velrate: "87",
    velimage: "https://m.media-amazon.com/images/I/51h7rJ5rKoL._SX679_.jpg",
  ),
  const VelItems(
    velname: "भोपळा",
    velarea: "4234",
    velrate: "98",
    velimage: "https://jpkart.in/wp-content/uploads/2020/11/Bottle-Gourd.jpg",
  ),
];

List<FruitItems> fruititems = [
  const FruitItems(
    fruitname: "टोमॅटो",
    fruitarea: "4232",
    fruitrate: "122",
    fruitimage:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Tomato_je.jpg/1200px-Tomato_je.jpg",
  ),
  const FruitItems(
    fruitname: "वांगी",
    fruitarea: "3534",
    fruitrate: "42",
    fruitimage:
        "https://aapkiidukaan.com/wp-content/uploads/2021/04/vang-bhaji.jpg",
  ),
  const FruitItems(
    fruitname: "मिरची",
    fruitarea: "7546",
    fruitrate: "45",
    fruitimage:
        "https://i0.wp.com/shimaze.com/wp-content/uploads/2020/05/green-chilli-600x480-1.webp?w=600&ssl=1",
  ),
  const FruitItems(
    fruitname: "कोबी",
    fruitarea: "65456",
    fruitrate: "33",
    fruitimage:
        "https://ethnicprides.com/wp-content/uploads/2017/07/Cabbage.jpg",
  ),
  const FruitItems(
    fruitname: "फुलकोबी",
    fruitarea: "56323",
    fruitrate: "63",
    fruitimage:
        "https://johnsonfruiters.co.za/wp-content/uploads/2020/11/19-cauliflower-png-image.png",
  ),
  const FruitItems(
    fruitname: "ढोबळी मिरची",
    fruitarea: "32424",
    fruitrate: "30",
    fruitimage:
        "https://5.imimg.com/data5/RF/JI/GLADMIN-70752129/capsicum-green-and-shimla-mirchi-500x500.png",
  ),
];

List<kdDhanyaItems> kditems = [
  const kdDhanyaItems(
    kaddhanyaname: "गहु",
    kaddhanyaarea: "4232",
    kaddhanyarate: "122",
    kdimage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeYjQZfEqJNk4qn_y8g9faYre-haJg4JgmtwX6MZCUkYRLI3nap7O_YrhtSvR2IWuN4f0&usqp=CAU",
  ),
  const kdDhanyaItems(
    kaddhanyaname: "ज्वारी",
    kaddhanyaarea: "4232",
    kaddhanyarate: "122",
    kdimage:
        "https://thumbs.dreamstime.com/b/sorghum-bicolor-commun%C3%A9ment-appel%C3%A9-sorgho-et-aussi-connu-sous-le-nom-de-grand-millet-durra-jowari-jowar-ou-milo-isol%C3%A9-230405544.jpg",
  ),
  const kdDhanyaItems(
    kaddhanyaname: "मका",
    kaddhanyaarea: "4232",
    kaddhanyarate: "122",
    kdimage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOjS72_L63pHh-AmMX7ORG8GQafSLl_8uJqw&usqp=CAU",
  ),
  const kdDhanyaItems(
    kaddhanyaname: "उडीद",
    kaddhanyaarea: "4232",
    kaddhanyarate: "122",
    kdimage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZY5qKHb25A7qyftzS5m6MOoNPCAQm1Lb-3GgDJuqofVyXxIrvXEMP8xtDSEsOQaccIhM&usqp=CAU",
  ),
  const kdDhanyaItems(
    kaddhanyaname: "हरभरा",
    kaddhanyaarea: "4232",
    kaddhanyarate: "122",
    kdimage:
        "https://img.freepik.com/premium-photo/green-chickpea-branch-isolated-white-background-flowers-chickpeas-isolated_157837-4342.jpg?w=2000",
  ),
  const kdDhanyaItems(
    kaddhanyaname: "बाजरी",
    kaddhanyaarea: "4232",
    kaddhanyarate: "122",
    kdimage:
        "http://www.trsseeds.com/wp-content/uploads/2019/08/Hybrid-Bajra-TRS-7788.jpg",
  ),
];

List<OrchardItems> orcharditems = [
  const OrchardItems(
    orchardname: "डाळींब",
    orchardarea: "4232",
    orchardrate: "122",
    orchardimage:
        "https://gromaal.com/wp-content/uploads/2020/06/dalim-600x600.jpg",
  ),
  const OrchardItems(
    orchardname: "द्राक्ष",
    orchardarea: "4232",
    orchardrate: "122",
    orchardimage: "https://www.planetayurveda.com/pa-wp-images/grapes.jpg",
  ),
  const OrchardItems(
    orchardname: "ड्रॅगन फ्रूट",
    orchardarea: "4232",
    orchardrate: "122",
    orchardimage:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Hylocereus_undatus_red_pitahaya.jpg/800px-Hylocereus_undatus_red_pitahaya.jpg",
  ),
  const OrchardItems(
    orchardname: "लिंबू",
    orchardarea: "4232",
    orchardrate: "122",
    orchardimage:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWHH0bd3yY3VlQERSycIjpmxQFjQDJ_hytuA&usqp=CAU",
  ),
  const OrchardItems(
    orchardname: "पेरु",
    orchardarea: "4232",
    orchardrate: "122",
    orchardimage: "https://smartyield.in/wp-content/uploads/2021/06/Guava.png",
  ),
  const OrchardItems(
    orchardname: "सिताफळ",
    orchardarea: "4232",
    orchardrate: "122",
    orchardimage:
        "https://www.bigbasket.com/media/uploads/p/m/10000349_20-fresho-custard-apple.jpg",
  ),
];

class LeafItems {
  String leafname;
  String leafarea;
  String leafrate;
  String leafimage,
      leafland,
      leafenv,
      leafpreni,
      leafvarity,
      leafsupliment,
      leafdeses,
      leafyield;
  LeafItems({
    required this.leafname,
    required this.leafarea,
    required this.leafrate,
    required this.leafimage,
    required this.leafdeses,
    required this.leafenv,
    required this.leafland,
    required this.leafpreni,
    required this.leafsupliment,
    required this.leafvarity,
    required this.leafyield,
  });
}

class VelItems {
  final String velname;
  final String velarea;
  final String velrate;
  final velimage;

  const VelItems({
    required this.velname,
    required this.velarea,
    required this.velrate,
    required this.velimage,
  });
}

class FruitItems {
  final String fruitname;
  final String fruitarea;
  final String fruitrate;
  final fruitimage;

  const FruitItems({
    required this.fruitname,
    required this.fruitarea,
    required this.fruitrate,
    required this.fruitimage,
  });
}

class kdDhanyaItems {
  final String kaddhanyaname;
  final String kaddhanyaarea;
  final String kaddhanyarate;
  final kdimage;

  const kdDhanyaItems({
    required this.kaddhanyaname,
    required this.kaddhanyaarea,
    required this.kaddhanyarate,
    required this.kdimage,
  });
}

class OrchardItems {
  final String orchardname;
  final String orchardarea;
  final String orchardrate;
  final orchardimage;

  const OrchardItems({
    required this.orchardname,
    required this.orchardarea,
    required this.orchardrate,
    required this.orchardimage,
  });
}

class LeafyPlantsListItems extends StatelessWidget {
  final LeafItems leafitems;
  final void Function()? press;
  const LeafyPlantsListItems({
    Key? key,
    required this.press,
    required this.leafitems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.orange,
        onTap: press,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                width: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Colors.transparent,
                ),
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    child:
                        Image.network(leafitems.leafimage, fit: BoxFit.fill)),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.green,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          leafitems.leafname,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            const Text(
                              "एकर : ",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                            Text(
                              leafitems.leafarea,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.currency_rupee,
                                size: 16, color: Colors.black54),
                            Text(
                              leafitems.leafrate,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.navigate_next,
                        size: 32, color: Colors.black54)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VelVargPlantsListItems extends StatelessWidget {
  final VelItems velitems;
  final void Function()? press;
  const VelVargPlantsListItems(
      {Key? key, required this.velitems, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.orange,
        onTap: press,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                width: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Colors.transparent,
                ),
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    child: Image.network(velitems.velimage, fit: BoxFit.fill)),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.green,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          velitems.velname,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            const Text(
                              "एकर : ",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                            Text(
                              velitems.velarea,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.currency_rupee,
                                size: 16, color: Colors.black54),
                            Text(
                              velitems.velrate,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.navigate_next,
                        size: 32, color: Colors.black54)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FruitPlantsListItems extends StatelessWidget {
  final FruitItems fruititems;
  final void Function()? press;

  const FruitPlantsListItems(
      {Key? key, required this.fruititems, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.orange,
        onTap: press,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                width: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Colors.transparent,
                ),
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    child:
                        Image.network(fruititems.fruitimage, fit: BoxFit.fill)),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.green.withOpacity(.9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          fruititems.fruitname,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            const Text(
                              "एकर : ",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                            Text(
                              fruititems.fruitarea,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.currency_rupee,
                                size: 16, color: Colors.black54),
                            Text(
                              fruititems.fruitrate,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.navigate_next,
                        size: 32, color: Colors.black54)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class KadDhanyaPlantsListItems extends StatelessWidget {
  final kdDhanyaItems kditems;
  final void Function()? press;
  const KadDhanyaPlantsListItems(
      {Key? key, required this.kditems, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.orange,
        onTap: press,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                width: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Colors.transparent,
                ),
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    child: Image.network(kditems.kdimage, fit: BoxFit.fill)),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.green.withOpacity(.9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          kditems.kaddhanyaname,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            const Text(
                              "एकर : ",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                            Text(
                              kditems.kaddhanyaarea,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.currency_rupee,
                                size: 16, color: Colors.black54),
                            Text(
                              kditems.kaddhanyarate,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.navigate_next,
                        size: 32, color: Colors.black54)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BagPlantsListItems extends StatelessWidget {
  final OrchardItems orcharditems;
  final void Function()? press;
  const BagPlantsListItems(
      {Key? key, required this.orcharditems, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.orange,
        onTap: press,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                width: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Colors.transparent,
                ),
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    ),
                    child: Image.network(orcharditems.orchardimage,
                        fit: BoxFit.fill)),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.green.withOpacity(.9),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          orcharditems.orchardname,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            const Text(
                              "एकर : ",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                            Text(
                              orcharditems.orchardarea,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.currency_rupee,
                                size: 16, color: Colors.black54),
                            Text(
                              orcharditems.orchardrate,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.navigate_next,
                        size: 32, color: Colors.black54)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
