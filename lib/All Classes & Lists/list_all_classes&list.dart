   import 'dart:math';
   import 'package:flutter/cupertino.dart';
   import 'package:flutter/material.dart';
   import 'package:charts_flutter_new/flutter.dart' as charts;

   var rn   = Random().nextInt(50);
   var rn2 = Random().nextInt(110);
   var rn3 = Random().nextInt(510);
   var rn4 = Random().nextInt(100);
   var rn5 = Random().nextInt(150);
   var rn6 = Random().nextInt(150);

   List<LeafItems> leafitems = [
     LeafItems(
       leafname: "कोथिंबीर",
       leafarea: rn,
       leafrate: 32,
       leafimage:
           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReCuMtKgITAPL3wz4OvJgS2Mle_LP_rzzBqQ&usqp=CAU",
       leafland:
           "कोथिंबीरीच्या लागवडीसाठी मध्यम कसदार आणि मध्यम खोलीची जमीन योग्य असते. परंतु जमिनीत सेंद्रिय खते जास्त प्रमाणात असतील तर हलक्या किंवा भारी कसदार असलेल्या जमिनीत देखील कोथिंबीर लागवड करू शकतो.",
       leafdeses:
           'कोथिंबीर पिकावर रोग व किडीचा प्रादुर्भाव कमी प्रमाणात होतो. कधी कधी मर, भुरी या रोगांचा प्रार्दूभाव दिसतो. अशावेळी शिफारसीनुसार भुर रोगासाठी भुरी प्रतिबंधक वापरू शकतो तसेच पाण्यानत विरघळणारे गंधक वापरावे.',
       leafenv:
           'तसे पाहता कोथिंबीरीची लागवड ही कोणत्याही हवामानात करू शकतो परंतु अति पाऊस किंवा अति ऊन असेल तर कोथिंबीरीची वाढ हवी तशी होत नाही.\n'
           'आधी सांगितल्या प्रमाणे उन्हाळ्यात कोथिंबीरीची वाढ कमी असते पण मागणी जास्त असल्याने बाजारात भाव चांगला असतो त्यामुळे पाण्याची उपलब्दता असेल तर उन्हाळ्यात देखील कोथिंबीर लागवड करून जास्त नफा मिळवता येतो.',
       leafpreni:
           'कोथिंबीरीची लागवड करण्याआधी जमीन नांगरून व कुळवून चांगली भुसभुशीत करून घ्यावी. जमिनीत एकरी ६ ते ८ टन चांगले कुजलेले शेणखत घालावे\n'
           'त्यानंतर ३×२ मीटर आकाराचे सपाट वाफे तयार करावे. आपण ह्या वाफ्यात बी फेकून लागवड करू शकतो. बी फेकून लागवड करताना बी सारखे पडेल ह्याची काळजी घ्यावी. बी फेकून लागवड करायची नसेल तर वाफयामध्ये  १५ से.मी. अंतरावर खुरप्याने ओळी पाडून त्यात बी पेरु शकतो.\n'
           'उन्हाळ्यात कोथिंबीर लागवड करायची असेल तर पेरणी आधीच वाफे भिजवा आणि मग वाफसा आल्यानंतर त्यात बी फेकून किंवा ओळी पाडून त्यात बी टाकून पेरणी करावी.\n'
           'कोथिंबीर लागवडीसाठी एकरी २५ ते ३५ किलो बियाणे लागते.\n'
           'लागवडी आधी धने हळुवार रगडुन फोडून घ्यावेत व त्यातील बी वेगळे करावे तसेच पेरणीपुर्वी धण्याचे बी भिजऊन मग गोणपाटात गुंडाळून ठेवावे. त्यातमुळे उगवण ८ ते १० दिवसात होते व कोथिंबीरीच्याे उत्पा दनात वाढ होते. त्याचसोबत काढणी देखील लवकर होते.',
       leafsupliment:
           "कोथिंबीर लागवडी आधी जमिनीत एकरी ६ ते ८ टन चांगले कुजलेले शेणखत घालावे. बी उगवल्यानंतर २० दिवसांनी हेक्टरी ४० किलो नत्र द्यावे. त्याचसोबत २५ दिवसांनी १०० लिटर पाण्यात २५० ग्रॅम युरिया मिसळून दोन फवारण्या करू शकतो ज्यामुळे कोथिंबीरीची वाढ चांगली होते.\n"
           "कोथिंबीर पिकाला नियमित पाणी गरजेचे असते. उन्हाळ्यामध्ये दर ५ दिवसांनी तर हिवाळ्यामध्ये ८-१० दिवसांनी पाणी द्यावे.",
       leafvarity:
           "व्ही 1, व्ही 2, को-१, डी-९२, डी-९४, जे २१४, के ४५, कोइमतूर-१, कोइमतूर-२, लाम सी.एस.- २, लाम सी.एस.- ४, स्थानिक वाण, जळगाव धना, वाई धना या कोथिंबीरीच्या, स्थासनिक आणि सुधारित जाती लागवडीसाठी वापरली जातात.",
       leafyield:
           "पेरणी नंतर ३५ ते ४० दिवसानी कोथिंबीर १५ ते २० से.मी. उंचीची होते त्यावेळी ती उपटून किंवा कापून काढणी करावी. पेरणीच्या २ महिन्यांनंतर कोथिंबीरीला फुले यायला सुरवात होते त्यामुळे त्या आधीच काढणी करणे महत्वाचे आहे.\n"
           "पावसाळी आणि हिवाळी हंगामात हिरव्या कोथिंबीरीचे एकरी ४ ते ६ टन उत्पादन मिळते तर उन्हााळी हंगामात हेच उत्पादन २.५ ते ३.५ टन मिळते. ",
     ),
     LeafItems(
       leafname: "मेथी",
       leafarea: rn,
       leafrate: 45,
       leafimage:
           "https://5.imimg.com/data5/LA/IU/MY-28014299/fresh-methy-bunch-500x500.jpg",
       leafyield: 'लागणी पासून 30 ते 35 दिवसांनी काढणीला तयार होते मी तिची काढणी करताना संपूर्ण झोपते मुळापासून उपटून टाकतात पिकाचा खोडवा दोन-तीन वेळा घेता येतो मात्र कसुरी मेथीची जास्त फोटो घेता येतात प्रामुख्याने घेणे शक्य होते काही वेळा दोन ते तीन फूट घेतल्यावर यांसाठी ठेवतात आणि तजेलदार असतांना आणि फुले येण्यापूर्वी काढणी करावी या दोन तीन दिवस आधी पाणी दिल्यास काढणी करणे सोपे जाते आणि पाने ताजी राहतात आणि नंतर मी तिचे योग्य आकाराच्या जुड्या बांधून कापडात किंवा जाळीदार विषयांमध्ये बांबूच्या टोपल्या मध्ये जुळ्या व्यवस्थित रचून बाजारात विक्रीसाठी पाठवाव्यात मेथीच्या झुल्यात पुरवल्या जाणार नाहीत याची काळजी घ्यावी तसेच काढली संध्याकाळी करावी म्हणजे ताजी भाजी बाजारपेठेत पाठवत आहे ते मुलांना जास्त माती असल्या मुळे मुळे पाण्यातून पाणी जपून घ्यावे म्हणजे भाजी सोडत नाही मेथीची काढणी आणि विक्री यामध्ये कमीत कमी कालावधी असावा जेणेकरुन भाजीत दर्जा कायम राहील उत्पादन करण्याच्या पद्धतीनुसार एकरी सात ते आठ ते 9 ते 10 टन मिळते बियाण्यासाठी ठेवल्यास साधे मी तिचे एक तरी एक ते दीड जण तर मसूरी मसूरी शेतीची 600 ते 700 किलो बियाणे मिळते तर मित्रांनो अशा प्रकारे आपण मेथी पीक लागवड करून कमी उत्पादन खर्चात जास्त नफा मिळू शकतो.',
       leafvarity: 'मुख्य दोन प्रकार आहे त्यामध्ये पहिला प्रकार आहे '
           'कसुरी मेथी या मेथीची पाने लहान गोल असून तिची वाढ सुरुवातीला फार सावकाश होते'
           ' या मेथीची रोपे लहान असताना त्यांनी फांद्या आणि थेट नेहमीच्या वेळेपेक्षा बारीक असतात'
           ' या मेथीची फुले आकर्षक पिवळ्या रंगाची लांब पाण्यावर येणारी शेंगा लहान कोयत्याच्या आकाराच्या असतात तर बिया नेहमीच्या मैत्रीपेक्षा बारीक असतात कसुरी मेथी अधिक सुगंधीत आणि स्वादिष्ट असते तरी मिठी मध्ये कसुरी सिलेक्शन ही सुधारित जात असून ती दोन महिन्यात तयार होते ही जात उशिरा तयार होणाऱ्या असली तरी तिचे अनेक फुटवे घेता येतात आणि जातात परसबागेत लावण्यास फारच उपयुक्त आहे घेऊन जाताय नेहमीची माहिती लवकर वाढते या मी तिला भरपूर फांद्या येतात आणि वाढीची सवय असते या मेथीची पाने लंबगोल किंवा गोलसर असतात या मी तिची फुले पांढरी असून ती शेंड्याकडे पाण्याच्या  प्रत्येक ठिकाणी दोन किंवा तीन येतात या मेथीच्या शेंगा लहान आणि मोठे असते बऱ्याच ठिकाणी स्थानिक वाणाची लागवड केली जाते '
           'हिरवी कोवळी लुसलुशीत पाने लवकर पुलावर न येणे कोरडेपणा जास्तीत जास्त टिकून राहील. ',
       leafsupliment: 'पानांची चांगली वाढ होण्यासाठी मेथीच्या पिकाला नत्रयुक्त खतांची आवश्यकता असली तरी हे शेंगावर्गीय कुळातील पीक असल्यामुळे सुरवातीला हेक्टरी 20 किलो नत्र आणि त्यानंतर 15 दिवसांनी खुरपणी करून हेक्टरी 20 किलो नत्र दिल्यास पिकाची वाढ जोमदार होते किंवा पेरणीनंतर 3 आठवड्यांनी 10 लिटर पाण्यात 150 ग्रॅम युरिया मिसळून फवारणी केल्यास मेथीचे उत्पादन आणि प्रत सुधारते\n'

       'पिकाचा खोडवा घेतल्यासही वरीलप्रमाणे खतांचा वापर करावा. मेथीला नियमित पाणी देणे आवश्यक आहे. कोवळी आणि लुसलुशीत भाती मिळण्यासाठी 4-6 दिवसांच्या अंतराने पाण्याच्या पाळ्या द्याव्यात. पाण्याचा नियमित पुरवठा केल्यास अधिक उत्पादन मिळवून खोडवेही जास्त येतात.',
       leafpreni: 'मेथी या थंड हवामानातील पीक असले तरी महाराष्ट्रातील खरीप आणि रब्बी हवामानातील पीक घेतले जाते मेथीची लागवड खरीप हंगामात जून जुलै महिन्यात आणि रब्बी हंगामात सप्टेंबर-ऑक्टोबर महिन्यात करतात माझी तर सतत पुरवठा होण्यासाठी पेरणी टप्प्या टप्प्याने करतात समशीतोष्ण हवामान आणि पाण्याचा नियमित पुरवठा असल्यास मेथीची लागवड वर्षभर करता येते परंतु थंड हवामानात उत्पादन आणि पिकाचा दर्जा चांगला मिळतो याची माहिती पिकाची लागवड कशी करावी मित्रांनो मेथीची लागवड सपाट वाफ्यामध्ये वीस ते पंचवीस सेंटिमीटर अंतरावर ओळीतून पेरून किंवा बी फेकून करता येते आंतरपीक म्हणून मेथीचे पी घेतांना मुख्य पिकांमधील उघड्या जागेत मेथीचे बी 20 ते 25 किलोमीटर अंतरावर फिरावे मेथीचे लागवडीसाठी तीन मीटर आकाराच्या किंवा त्यापेक्षा अधिक लांबीचे सपाट वाफे तयार करून त्यात मीठ टाकून किंवा उडीद पेरणी करता येते पेरणीनंतर लगेच हलके पाणी द्यावे आणि तण काढणी सोपी होते तसेच कापणी करणे सोपे जाते नेहमी ची माहिती पेरणीनंतर तीन ते चार दिवसात उगवते सहा ते सात दिवस साध्या किंवा नेहमीच्या मेथीचे लागवडीसाठी 25 ते 30 किलो बियाणे लागते आंतरपीक म्हणून घेताना बियाण्याचे प्रमाण आवश्यकतेनुसार ठेवावे बियाणे पेरताना एक सारख्यांनी पातळ पडेल याची दक्षता घ्यावी तसेच बियांसाठी बीजप्रक्रिया करताना कॅप्टन तीन ग्रॅम प्रति किलो बियाणे या प्रमाणात बिहार सोडावे खते आणि पाणी व्‍यवस्‍थापन विधी पिकासाठी कसे करावे ते जाणून घेऊया वाढविण्यासाठी नत्रयुक्त खतांची आवश्यकता असली तरी ठीक असल्यामुळे सुरुवातीला तरी 20 किलो नत्र आणि त्यानंतर 15 दिवसांनी खुरपणी करून हेक्‍टरी 20 किलो नत्र दिल्यास पिकाची वाढ जोमदार होते किंवा पेरणीनंतर तीन आठवड्यांनी दहा लिटर पाण्यात मिसळून फवारणी केल्यास उत्पादन आणि प्रत सुधारते पिकाचा खोडवा घेतल्यास पहिल्याप्रमाणे खतांचा वापर करावा मी तिला नियमित पाणी देणे आवश्यक आहे पाण्याचा नियमित पुरवठा केल्यास अधिक उत्पादन मिळून जास्त येतात यावर रोगाचा प्रादुर्भाव होत नाही मात्र काही वेळा मर रोगाचा प्रादुर्भाव दिसून येतो या रोगाच्या नियंत्रणासाठी पिकाची फेरपालट करावी पाण्याचा चांगला निचरा होणारी जमीन निवडावी बियांची पेरणी करू नये पिकाला नियमित पाणी द्यावे आणि शेतात स्वच्छता राखावी आता एवढी मेहनत केल्यावर त्याचे फळ तर मिळणारच ',
       leafenv: 'हे थंड हवामानात वाढणारे पीक आहे विशेषता कसुरी मेथी थंड हवामान मानवते\n'
           ' म्हणून निवडल्या मेथीची लागवड करतात कमी दिवसात तयार होणारे पीक आहे\n'
           ' विविध प्रकारच्या हवामानात मेथीची शेती घेत असले तरी उष्ण हवामानात पिकाची वाढ कमी होऊन चांगल्या दर्जाची भाजी मिळत नाही त्यामुळे हिवाळ्यात मेथीची लागवड करणे फायद्याचे ठरते\n'
           ' मेथीचे लागवडीसाठी मध्यम व कसदार आणि पाण्याचा चांगला निचरा होणारी जमीन निवडावी लागते',
       leafdeses: 'शेतकरी मित्रांनो आपण मेथी लागन केल्यानंतर मी ती वरती येणारा प्रमुख रोग म्हणजे मररोग होय या रोगावर नियंत्रण करण्यासाठी आपल्याला वेळीच औषध फवारले नाही तर हा रोग आपले मोठे नुकसान करून जातो नियंत्रण करता येईल या संदर्भातच आपण आज माहिती घेत आहोत येऊ शकतो खरीप तसेच रब्बी हंगामात आई जोरदार पाणी हे पीक आपल्याला साथ देऊ शकतो आणि कमी दिवसात आपल्याला जास्त पैसे कमवू शकतो पण हा मर रोग एकदा आला की आपला आर्थिक तोटा खूप मोठा होतो त्यामुळे आपण काही बुरशीनाशक फवारून या रोगावर नियंत्रण करू शकतो पण जर आपल्याला असे आढळून आले की आपल्या मेथी पिकात मर रोग अशा पद्धतीने जर दिसत असेल तर आपण या नियंत्रण करण्यासाठी कार्बेन्डाझिम 25% असलेलं प्लस मॅन्कोझेब 50% घटक असणाऱ्या बुरशीनाशकांची फवारणी घेऊ शकतो अन्यथा आपण सुद्धा फवारणी घेऊ शकतो यामुळे आपल्याला मर रोगावर शंभर टक्के नियंत्रण मिळू शकते. ',
       leafland: 'मेथीच्या लागवडीसाठी मध्यम ते कादार आणि पाण्याचा चांगला निचरा होणारी जमीन असावी.',
     ),
     LeafItems(
       leafname: "शेपू",
       leafarea: rn2,
       leafrate: 23,
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
       leafarea: rn3,
       leafrate: 15,
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
       leafarea: rn4,
       leafrate: 18,
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
       leafarea: rn5,
       leafrate: 12,
       leafimage: "http://specialtyproduce.com/sppics/12569.png",
     ),
   ];

   List<VelItems> velitems = [
     VelItems(
       velname: "कलिंगड",
       velarea: 234,
       velrate: 24,
       velimage:
           "https://us.123rf.com/450wm/proslgn/proslgn1509/proslgn150900070/45556406-anguria-isolato-su-sfondo-bianco-.jpg?ver=6",
       velland: '',
       veldeses: '',
       velenv: '',
       velpreni: '',
       velsupliment: '',
       velvarity: '',
       velyield: '',
     ),
     const VelItems(
       velname: "ककडी",
       velarea: 6475,
       velrate: 21,
       velimage:
           "https://www.greenavity.com/uploads/product_image/158133390548.png",
       velland: '',
       veldeses: '',
       velenv: '',
       velpreni: '',
       velsupliment: '',
       velvarity: '',
       velyield: '',
     ),
     const VelItems(
       velname: "कारले",
       velarea: 435345,
       velrate: 43,
       velimage:
           "https://www.hi5mart.com/image/cache/catalog/Vegetables/Bitter-Gourd-750x750.jpg",
       velland: '',
       veldeses: '',
       velenv: '',
       velpreni: '',
       velsupliment: '',
       velvarity: '',
       velyield: '',
     ),
     const VelItems(
       velname: "खरबुज",
       velarea: 3454,
       velrate: 34,
       velimage:
           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhJqt2dF6q9O36CMD9r9sqhpc48BYwIKVJAg&usqp=CAU",
       velland: '',
       veldeses: '',
       velenv: '',
       velpreni: '',
       velsupliment: '',
       velvarity: '',
       velyield: '',
     ),
     const VelItems(
       velname: "घेवडा",
       velarea: 6786,
       velrate: 67,
       velimage: "https://m.media-amazon.com/images/I/51h7rJ5rKoL._SX679_.jpg",
       velland: '',
       veldeses: '',
       velenv: '',
       velpreni: '',
       velsupliment: '',
       velvarity: '',
       velyield: '',
     ),
     const VelItems(
       velname: "भोपळा",
       velarea: 7867,
       velrate: 78,
       velimage: "https://jpkart.in/wp-content/uploads/2020/11/Bottle-Gourd.jpg",
       velland: '',
       veldeses: '',
       velenv: '',
       velpreni: '',
       velsupliment: '',
       velvarity: '',
       velyield: '',
     ),
   ];

   List<FruitItems> fruititems = [
     const FruitItems(
       fruitname: "टोमॅटो",
       fruitarea: 6767,
       fruitrate: 56,
       fruitimage:
           "https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Tomato_je.jpg/1200px-Tomato_je.jpg",
       fruitdeses: '',
       fruitenv: '',
       fruitland: '',
       fruitpreni: '',
       fruitsupliment: '',
       fruitvarity: '',
       fruityield: '',
     ),
     const FruitItems(
       fruitname: "वांगी",
       fruitarea: 6787,
       fruitrate: 46,
       fruitimage:
           "https://aapkiidukaan.com/wp-content/uploads/2021/04/vang-bhaji.jpg",
       fruitdeses: '',
       fruitenv: '',
       fruitland: '',
       fruitpreni: '',
       fruitsupliment: '',
       fruitvarity: '',
       fruityield: '',
     ),
     const FruitItems(
       fruitname: "मिरची",
       fruitarea: 67867,
       fruitrate: 67,
       fruitimage:
           "https://i0.wp.com/shimaze.com/wp-content/uploads/2020/05/green-chilli-600x480-1.webp?w=600&ssl=1",
       fruitdeses: '',
       fruitenv: '',
       fruitland: '',
       fruitpreni: '',
       fruitsupliment: '',
       fruitvarity: '',
       fruityield: '',
     ),
     const FruitItems(
       fruitname: "कोबी",
       fruitarea: 98696,
       fruitrate: 67,
       fruitimage:
           "https://ethnicprides.com/wp-content/uploads/2017/07/Cabbage.jpg",
       fruitdeses: '',
       fruitenv: '',
       fruitland: '',
       fruitpreni: '',
       fruitsupliment: '',
       fruitvarity: '',
       fruityield: '',
     ),
     const FruitItems(
       fruitname: "फुलकोबी",
       fruitarea: 2131,
       fruitrate: 45,
       fruitimage:
           "https://johnsonfruiters.co.za/wp-content/uploads/2020/11/19-cauliflower-png-image.png",
       fruitdeses: '',
       fruitenv: '',
       fruitland: '',
       fruitpreni: '',
       fruitsupliment: '',
       fruitvarity: '',
       fruityield: '',
     ),
     const FruitItems(
       fruitname: "ढोबळी मिरची",
       fruitarea: 12313,
       fruitrate: 213,
       fruitimage:
           "https://5.imimg.com/data5/RF/JI/GLADMIN-70752129/capsicum-green-and-shimla-mirchi-500x500.png",
       fruitdeses: '',
       fruitenv: '',
       fruitland: '',
       fruitpreni: '',
       fruitsupliment: '',
       fruitvarity: '',
       fruityield: '',
     ),
   ];

   List<kdDhanyaItems> kditems = [
     const kdDhanyaItems(
       kaddhanyaname: "गहु",
       kaddhanyaarea: 1331,
       kaddhanyarate: 123,
       kaddhanyaimage:
           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeYjQZfEqJNk4qn_y8g9faYre-haJg4JgmtwX6MZCUkYRLI3nap7O_YrhtSvR2IWuN4f0&usqp=CAU",
       kaddhanyadeses: '',
       kaddhanyaenv: '',
       kaddhanyaland: '',
       kaddhanyapreni: '',
       kaddhanyasupliment: '',
       kaddhanyavarity: '',
       kaddhanyayield: '',
     ),
     const kdDhanyaItems(
       kaddhanyaname: "ज्वारी",
       kaddhanyaarea: 1231,
       kaddhanyarate: 435,
       kaddhanyaimage:
           "https://thumbs.dreamstime.com/b/sorghum-bicolor-commun%C3%A9ment-appel%C3%A9-sorgho-et-aussi-connu-sous-le-nom-de-grand-millet-durra-jowari-jowar-ou-milo-isol%C3%A9-230405544.jpg",
       kaddhanyadeses: '',
       kaddhanyaenv: '',
       kaddhanyaland: '',
       kaddhanyapreni: '',
       kaddhanyasupliment: '',
       kaddhanyavarity: '',
       kaddhanyayield: '',
     ),
     const kdDhanyaItems(
       kaddhanyaname: "मका",
       kaddhanyaarea: 69868,
       kaddhanyarate: 689,
       kaddhanyaimage:
           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOjS72_L63pHh-AmMX7ORG8GQafSLl_8uJqw&usqp=CAU",
       kaddhanyadeses: '',
       kaddhanyaenv: '',
       kaddhanyaland: '',
       kaddhanyapreni: '',
       kaddhanyasupliment: '',
       kaddhanyavarity: '',
       kaddhanyayield: '',
     ),
     const kdDhanyaItems(
       kaddhanyaname: "उडीद",
       kaddhanyaarea: 48727,
       kaddhanyarate: 78,
       kaddhanyaimage:
           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZY5qKHb25A7qyftzS5m6MOoNPCAQm1Lb-3GgDJuqofVyXxIrvXEMP8xtDSEsOQaccIhM&usqp=CAU",
       kaddhanyadeses: '',
       kaddhanyaenv: '',
       kaddhanyaland: '',
       kaddhanyapreni: '',
       kaddhanyasupliment: '',
       kaddhanyavarity: '',
       kaddhanyayield: '',
     ),
     const kdDhanyaItems(
       kaddhanyaname: "हरभरा",
       kaddhanyaarea: 4232,
       kaddhanyarate: 22,
       kaddhanyaimage:
           "https://img.freepik.com/premium-photo/green-chickpea-branch-isolated-white-background-flowers-chickpeas-isolated_157837-4342.jpg?w=2000",
       kaddhanyadeses: '',
       kaddhanyaenv: '',
       kaddhanyaland: '',
       kaddhanyapreni: '',
       kaddhanyasupliment: '',
       kaddhanyavarity: '',
       kaddhanyayield: '',
     ),
     const kdDhanyaItems(
       kaddhanyaname: "बाजरी",
       kaddhanyaarea: 4232,
       kaddhanyarate: 12,
       kaddhanyaimage:
           "http://www.trsseeds.com/wp-content/uploads/2019/08/Hybrid-Bajra-TRS-7788.jpg",
       kaddhanyadeses: '',
       kaddhanyaenv: '',
       kaddhanyaland: '',
       kaddhanyapreni: '',
       kaddhanyasupliment: '',
       kaddhanyavarity: '',
       kaddhanyayield: '',
     ),
   ];

   List<BagItems> bagitems = [
     const BagItems(
       orcharddeses: '',
       orchardenv: '',
       orchardland: '',
       orchardpreni: '',
       orchardsupliment: '',
       orchardvarity: '',
       orchardyield: '',
       orchardname: "डाळींब",
       orchardarea: 4232,
       orchardrate: 122,
       orchardimage:
           "https://gromaal.com/wp-content/uploads/2020/06/dalim-600x600.jpg",
     ),
     const BagItems(
       orcharddeses: '',
       orchardenv: '',
       orchardland: '',
       orchardpreni: '',
       orchardsupliment: '',
       orchardvarity: '',
       orchardyield: '',
       orchardname: "द्राक्ष",
       orchardarea: 4232,
       orchardrate: 122,
       orchardimage: "https://www.planetayurveda.com/pa-wp-images/grapes.jpg",
     ),
     const BagItems(
       orcharddeses: '',
       orchardenv: '',
       orchardland: '',
       orchardpreni: '',
       orchardsupliment: '',
       orchardvarity: '',
       orchardyield: '',
       orchardname: "ड्रॅगन फ्रूट",
       orchardarea: 4232,
       orchardrate: 122,
       orchardimage:
           "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Hylocereus_undatus_red_pitahaya.jpg/800px-Hylocereus_undatus_red_pitahaya.jpg",
     ),
     const BagItems(
       orcharddeses: '',
       orchardenv: '',
       orchardland: '',
       orchardpreni: '',
       orchardsupliment: '',
       orchardvarity: '',
       orchardyield: '',
       orchardname: "लिंबू",
       orchardarea: 4324,
       orchardrate: 32,
       orchardimage:
           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWHH0bd3yY3VlQERSycIjpmxQFjQDJ_hytuA&usqp=CAU",
     ),
      BagItems(
       orcharddeses: '',
       orchardenv: '',
       orchardland: '',
       orchardpreni: '',
       orchardsupliment: '',
       orchardvarity: '',
       orchardyield: '',
       orchardname: "पेरु",
       orchardarea: 2333,
       orchardrate: 23,
       orchardimage: "https://smartyield.in/wp-content/uploads/2021/06/Guava.png",
     ),
     BagItems(
       orcharddeses: '',
       orchardenv: '',
       orchardland: '',
       orchardpreni: '',
       orchardsupliment: '',
       orchardvarity: '',
       orchardyield: '',
       orchardname: "सिताफळ",
       orchardarea: 23,
       orchardrate: 23,
       orchardimage:
           "https://www.bigbasket.com/media/uploads/p/m/10000349_20-fresho-custard-apple.jpg",
     ),
   ];

   class LeafItems {
     String leafname;
     int leafarea;
     int leafrate;
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
     final int velarea;
     final int velrate;
     final String velland,
         velenv,
         velpreni,
         velvarity,
         velsupliment,
         veldeses,
         velyield;
     final velimage;

     const VelItems({
       required this.velname,
       required this.velarea,
       required this.velland,
       required this.velenv,
       required this.velpreni,
       required this.velvarity,
       required this.velsupliment,
       required this.veldeses,
       required this.velyield,
       required this.velrate,
       required this.velimage,
     });
   }

   class FruitItems {
     final String fruitname;
     final int fruitarea;
     final int fruitrate;
     final String fruitland,
         fruitenv,
         fruitpreni,
         fruitvarity,
         fruitsupliment,
         fruitdeses,
         fruityield;
     final fruitimage;

     const FruitItems({
       required this.fruitname,
       required this.fruitarea,
       required this.fruitrate,
       required this.fruitimage,
       required this.fruitland,
       required this.fruitenv,
       required this.fruitpreni,
       required this.fruitvarity,
       required this.fruitsupliment,
       required this.fruitdeses,
       required this.fruityield,
     });
   }

   class kdDhanyaItems {
     final String kaddhanyaname;
     final int kaddhanyaarea;
     final int kaddhanyarate;
     final String kaddhanyaland,
         kaddhanyaenv,
         kaddhanyapreni,
         kaddhanyavarity,
         kaddhanyasupliment,
         kaddhanyadeses,
         kaddhanyayield;
     final kaddhanyaimage;

     const kdDhanyaItems({
       required this.kaddhanyaname,
       required this.kaddhanyaarea,
       required this.kaddhanyarate,
       required this.kaddhanyaimage,
       required this.kaddhanyaland,
       required this.kaddhanyaenv,
       required this.kaddhanyapreni,
       required this.kaddhanyavarity,
       required this.kaddhanyasupliment,
       required this.kaddhanyadeses,
       required this.kaddhanyayield,
     });
   }

   class BagItems {
     final String orchardname;
     final int orchardarea;
     final int orchardrate;
     final String orchardland,
         orchardenv,
         orchardpreni,
         orchardvarity,
         orchardsupliment,
         orcharddeses,
         orchardyield;
     final orchardimage;

     const BagItems({
       required this.orchardname,
       required this.orchardarea,
       required this.orchardrate,
       required this.orchardimage,
       required this.orchardland,
       required this.orchardenv,
       required this.orchardpreni,
       required this.orchardvarity,
       required this.orchardsupliment,
       required this.orcharddeses,
       required this.orchardyield,
     });
   }

   class LeafyPlantsListItems extends StatelessWidget {
     final LeafItems items;
     final void Function()? press;
     const LeafyPlantsListItems({
       Key? key,
       required this.press,
       required this.items,
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
                   width: 160,
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
                           Image.network(items.leafimage, fit: BoxFit.fill)),
                 ),
               ),
               Expanded(
                 flex: 3,
                 child: Container(
                   width: 160,
                   decoration: BoxDecoration(
                     borderRadius: const BorderRadius.only(
                         bottomLeft: Radius.circular(10),
                         bottomRight: Radius.circular(10)),
                     color: Colors.red.shade100,
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Center(
                         child: Text(
                           items.leafname,
                           style: const TextStyle(fontSize: 16),
                         ),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             children: [
                               const Text(
                                 "एकर : ",
                                 style: TextStyle(
                                     fontSize: 14, color: Colors.black54),
                               ),
                               Text(
                                 items.leafarea.toString(),
                                 style: const TextStyle(
                                     fontSize: 14, color: Colors.black54),
                               ),
                             ],
                           ),
                           Row(
                             children: [
                               const Icon(Icons.currency_rupee,
                                   size: 15, color: Colors.black54),
                               Text(
                                 items.leafrate.toString(),
                                 style: const TextStyle(
                                     fontSize: 14, color: Colors.black54),
                               ),
                             ],
                           ),


                         ],
                       ),
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
                   width: 160,
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
                   width: 160,
                   decoration: BoxDecoration(
                     borderRadius: const BorderRadius.only(
                         bottomLeft: Radius.circular(10),
                         bottomRight: Radius.circular(10)),
                     color: Colors.orange.shade100,
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       Center(
                         child: Text(
                           velitems.velname,
                           style: const TextStyle(fontSize: 16),
                         ),
                       ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Row(
                             children: [
                               const Text(
                                 "एकर : ",
                                 style: TextStyle(
                                     fontSize: 14, color: Colors.black54),
                               ),
                               Text(
                                 velitems.velarea.toString(),
                                 style: const TextStyle(
                                     fontSize: 14, color: Colors.black54),
                               ),
                             ],
                           ),
                           Row(
                             children: [
                               const Icon(Icons.currency_rupee,
                                   size: 15, color: Colors.black54),
                               Text(
                                 velitems.velrate.toString(),
                                 style: const TextStyle(
                                     fontSize: 14, color: Colors.black54),
                               ),
                             ],
                           ),
                         ],
                       )

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
                   width: 160,
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
                   width: 160,
                   decoration: BoxDecoration(
                     borderRadius: const BorderRadius.only(
                         bottomLeft: Radius.circular(10),
                         bottomRight: Radius.circular(10)),
                     color: Colors.green.shade200,
                   ),
                   child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Center(
                             child: Text(
                               fruititems.fruitname,
                               style: const TextStyle(fontSize: 16),
                             ),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   const Text(
                                     "एकर : ",
                                     style: TextStyle(
                                         fontSize: 14, color: Colors.black54),
                                   ),
                                   Text(
                                     fruititems.fruitarea.toString(),
                                     style: const TextStyle(
                                         fontSize: 14, color: Colors.black54),
                                   ),
                                 ],
                               ),
                               Row(
                                 children: [
                                   const Icon(Icons.currency_rupee,
                                       size: 15, color: Colors.black54),
                                   Text(
                                     fruititems.fruitrate.toString(),
                                     style: const TextStyle(
                                         fontSize: 14, color: Colors.black54),
                                   ),
                                 ],
                               ),
                             ],
                           )

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
                   width: 160,
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
                       child: Image.network(kditems.kaddhanyaimage,
                           fit: BoxFit.fill)),
                 ),
               ),
               Expanded(
                 flex: 3,
                 child: Container(
                   width: 160,
                   decoration: BoxDecoration(
                     borderRadius: const BorderRadius.only(
                         bottomLeft: Radius.circular(10),
                         bottomRight: Radius.circular(10)),
                     color: Colors.purple.shade100,
                   ),
                   child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Center(
                             child: Text(
                               kditems.kaddhanyaname,
                               style: const TextStyle(fontSize: 16),
                             ),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Row(
                                 children: [
                                   const Text(
                                     "एकर : ",
                                     style: TextStyle(
                                         fontSize: 14, color: Colors.black54),
                                   ),
                                   Text(
                                     kditems.kaddhanyaarea.toString(),
                                     style: const TextStyle(
                                         fontSize: 14, color: Colors.black54),
                                   ),
                                 ],
                               ),
                               Row(
                                 children: [
                                   const Icon(Icons.currency_rupee,
                                       size: 15, color: Colors.black54),
                                   Text(
                                     kditems.kaddhanyarate.toString(),
                                     style: const TextStyle(
                                      fontSize: 14, color: Colors.black54),
                                ),
                              ],
                            ),
                          ],
                        )

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
  final BagItems orcharditems;
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
                width: 160,
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
                    child: Image.network(
                        orcharditems.orchardimage,
                        fit: BoxFit.fill)),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.teal.shade100
                ),
                child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Text(
                            orcharditems.orchardname,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "एकर : ",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black54),
                                ),
                                Text(
                                  orcharditems.orchardarea.toString(),
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.black54),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.currency_rupee,
                                    size: 15, color: Colors.black54),
                                Text(
                                  orcharditems.orchardrate.toString(),
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.black54),
                                ),
                              ],
                            ),
                          ],
                        )

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

// class bchart {
//   String Grosary;
//   int financial;
//   final Color color;
//
//   bchart({
//     required this.Grosary,
//     required this.financial,
//     required this.color
//   });
// }
// List<bchart> data = [
//   bchart(
//     Grosary: 'Tomato',
//     financial: 200,
//     color: Colors.red,
//
//   ),
//   bchart(
//     Grosary: 'Potato',
//     financial: 234,
//     color: Colors.green,
//   ),
//   bchart(
//     Grosary: 'Carrot',
//     financial: 564,
//     color: Colors.cyanAccent,
//   ),
//   bchart(
//     Grosary: 'Mula',
//     financial: 344,
//     color: Colors.orangeAccent,
//   ),
//   bchart(
//     Grosary: 'Gajar',
//     financial: 423,
//     color: Colors.blue,
//   ),
//   bchart(
//     Grosary: 'xyz',
//     financial: 113,
//     color: Colors.blue,
//   ),
//   bchart(
//     Grosary: 'xyzw',
//     financial: 113,
//     color: Colors.blue,
//   ),
//   bchart(
//     Grosary: 'Tomato1',
//     financial: 200,
//     color: Colors.red,
//
//   ),
//   bchart(
//     Grosary: 'Potato1',
//     financial: 2314,
//     color: Colors.green,
//   ),
//   bchart(
//     Grosary: 'Carrot1',
//     financial: 5164,
//     color: Colors.cyanAccent,
//   ),
//   bchart(
//     Grosary: 'Mula11',
//     financial: 3144,
//     color: Colors.orangeAccent,
//   ),
//   bchart(
//     Grosary: 'Gajar1',
//     financial: 4123,
//     color: Colors.blue,
//   ),
//   bchart(
//     Grosary: 'xyz1',
//     financial: 1113,
//     color: Colors.blue,
//   ),
//   bchart(
//     Grosary: 'xyzw1',
//     financial: 113,
//     color: Colors.blue,
//   ),
//
// ];

// List<charts.Series<LeafItems, String>> series = [
//   charts.Series(
//     id: "Grosary",
//     data: leafitems,
//     domainFn: (LeafItems series, _) => series.leafname,
//     measureFn: (LeafItems series, _) => series.leafrate,
//   )
// ];
