import 'package:flutter/material.dart';
import 'package:news/pages/home.dart';

class PageAbout extends StatefulWidget {
  static const String id = "jggfgjh";

  String img_link;
  String title;
  String desc;
  String data;
  String view;

  PageAbout(
      {required this.title,
      required this.desc,
      required this.img_link,
      required this.data,
      required this.view});

  @override
  State<PageAbout> createState() => _PageAboutState();
}

class _PageAboutState extends State<PageAbout> {
  double titlesize = 20;
  double textsize = 18;
  double datasize = 16;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade100,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  titlesize++;
                  textsize++;
                  datasize++;
                });
              },
              icon: Icon(Icons.plus_one)),
          IconButton(
              onPressed: () {
                setState(() {
                  titlesize--;
                  textsize--;
                  datasize--;
                });
              },
              icon: Icon(Icons.exposure_minus_1)),
        ],
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     Navigator.pushReplacementNamed(context, Home.id);
        //   },
        // ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              newsbuild(
                  img: widget.img_link,
                  title: widget.title,
                  desc: widget.desc,
                  data: widget.data)
            ],
          ),
        ),
      ),
    );
  }

  newsbuild(
      {required String img,
      required String title,
      required String desc,
      required String data}) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: titlesize, fontWeight: FontWeight.bold),
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(img),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                desc,
                style: TextStyle(fontSize: textsize),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.date_range),
              Text(widget.data),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.remove_red_eye),
              Text(widget.view),
            ],
          ),
        ),
      ],
    );
  }
}
