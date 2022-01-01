import 'package:flutter/material.dart';
import 'package:search/disponible.dart';
import 'package:search/search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        debugShowCheckedModeBanner: false,
        home: MyPage());
  }
}

List<String> country = [
  "Afghanistan"
      "Algérie",
  "Angola",
  "Antilles Néerlandaises",
  "Arménie",
  "Autriche",
  "Bahrein",
  "Belgique",
  "Bermudes",
  "Bostwana",
  "Bulgarie",
  "Bénin"
      "Cambod"
];

class MyPage extends StatefulWidget {
  MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search AND Info Pays"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/pays.jpg",
                width:400,
                height:400,
              ),
            ),
            ),
            SizedBox(height:20),
            Text("All country",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
            SizedBox(height: 15),
            Text(
              "Consulter les pays, tout en cliquant sur l'icon search."
            ),
          SizedBox(height:5),
            Text(
              "Cliquez pour être au parfum des nouvelles actualité de ces pays"
            ),
          SizedBox(height:5),
            Text(
              "Avoir les informations actuelles sur le pays de votre choix"
            ),
          SizedBox(height:5),
            Text(
              "Avoir les informations actuelles sur le pays de votre choix"
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          child: Icon(Icons.search),
          onPressed: () {
            showSearch(context: context, delegate: searchList());
          }),
    );
  }
}
