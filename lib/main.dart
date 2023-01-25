import 'package:flutter/material.dart';
import 'package:news/pages/about_page.dart';
import 'package:news/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
      routes: {
        Home.id: (context) => Home(),
        PageAbout.id: (context) => PageAbout(
              title: "title",
              desc: "desc",
              img_link: "img_link",
              data: "data",
              view: "",
            ),
      },

    );
  }
}
