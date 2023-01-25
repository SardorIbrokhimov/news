import 'dart:math';

import 'package:flutter/material.dart';

import '../models/about.dart';
import '../pages/about_page.dart';

class Science extends StatefulWidget {
  static const String id = "jhj";

  const Science({Key? key}) : super(key: key);

  @override
  State<Science> createState() => _ScienceState();
}

class _ScienceState extends State<Science> {

  var rn = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildcontainer(
                img: About().imglink[rn.nextInt(About().imglink.length)],
                title: About().title,
                desc: About().description,
                data: About().date,
                view: About().view),
            buildcontainer(
                img: About().imglink[rn.nextInt(About().imglink.length)],
                title: About().title,
                desc: About().description,
                data: About().date,
                view: About().view),
            buildcontainer(
                img: About().imglink[rn.nextInt(About().imglink.length)],
                title: About().title,
                desc: About().description,
                data: About().date,
                view: About().view),
          ],
        ),
      ),
    );
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
