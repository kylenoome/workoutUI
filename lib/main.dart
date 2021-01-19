import 'package:flutter/material.dart';
import 'listitem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FitnessApp(),
    );
  }
}

class FitnessApp extends StatefulWidget {
  @override
  _FitnessAppState createState() => _FitnessAppState();
}

class _FitnessAppState extends State<FitnessApp> {
  String img_Header = "https://unsplash.com/photos/fG0p4Qh_aWI";

  List<String> trainingImage = [
    "https://unsplash.com/photos/Jc-UCKGhIlU"
        "https://unsplash.com/photos/WvDYdXDzkhs"
        "https://unsplash.com/photos/Lx_GDv7VA9M"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300.0,
              pinned: false,
              floating: false,
              title: Text(
                "FitApp",
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              backgroundColor: Colors.black,
              toolbarHeight: 80.0,
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  img_Header,
                  fit: BoxFit.cover,
                  color: Color(0xaa212121),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
              bottom: PreferredSize(
                child: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 24.0, left: 12.0, right: 12.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0.0, horizontal: 24.0),
                      hintText: "Search for the training program...",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                preferredSize: Size.fromHeight(80.0),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                ),
              ],
            )
          ];
        },
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Top Trends",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 20.0,
                ),
                listItem(trainingImage[0], "Full Body Program", 53, 30),
                listItem(trainingImage[1], "Yoga Training", 30, 10),
                listItem(trainingImage[2], "Full Body ", 53, 30),
                listItem(trainingImage[3], "Full Body Program", 53, 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
