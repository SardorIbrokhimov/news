import 'package:flutter/material.dart';
import 'package:news/models/news_model.dart';
import 'package:news/pages/about_page.dart';
import 'package:news/screens/breaking.dart';
import 'package:news/screens/popular.dart';
import 'package:news/screens/science.dart';

import '../models/about.dart';
import '../screens/sport.dart';

class Home extends StatefulWidget {
  static const String id = "jhbvhb";

  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title = "news";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent.shade100,
            title: Text("News"),
            centerTitle: true,
            bottom: TabBar(

              tabs: [
              Tab(text: "Breaking",),
              Tab(text: "Sport",),
              Tab(text: "Popular",),
              Tab(text: "Science",),
            ],),

          ),
          body: TabBarView(
            children: [
              Breaking(),
              Sport(),
              Popular(),
              Science()

            ],
          ),
        ));
  }


  buildcontainer(
      {required String img,
      required String title,
      required String desc,
      required String data,
      required String view}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PageAbout(
                      title: title,
                      desc: desc,
                      img_link: img,
                      data: data,
                      view: view,
                    )));
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
