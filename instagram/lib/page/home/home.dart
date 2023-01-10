import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram/page/home/story.dart';
import 'package:instagram/page/post.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage(
      {super.key,
      required this.themeValue,
      required this.darkMode,
      required this.themeChangedCallback});
  bool darkMode;
  bool themeValue;
  VoidCallback themeChangedCallback;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool iconMode = false;
  var currentIndex = 0;

  IconData iconLight = Icons.wb_sunny;
  IconData iconDark = Icons.nights_stay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: widget.darkMode
            ? Image.asset(
                'images/logo2.png',
                width: 130,
                height: 130,
              )
            : Image.asset(
                'images/logo.png',
                width: 130,
                height: 130,
              ),
        // title: Image.asset(
        //   "images/logo2.png",
        //   width: 130,
        //   height: 130,
        // ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  iconMode = !iconMode;
                  colorMode = !colorMode;
                  widget.themeChangedCallback();
                });
              },
              icon: Icon(iconMode ? iconDark : iconLight)),
          // Switch(
          //   value: widget.themeValue,
          //   onChanged: (value) {
          //     widget.themeChangedCallback();
          //   },
          // ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.messenger_outline),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Story(),
            for (var i = 1; i <= 3; i++)
              Post(
                image: "images/foto$i.jpeg",
              ),
          ],
        ),
      ),
    );
  }
}
