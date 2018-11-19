//this file takes care of the theme and general app fuctionality
import 'package:flutter/material.dart';
import 'package:camp_app_nav_practice/home.dart';

class NavPracticeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Meme Board',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue[700],
        accentColor: Colors.blue[50],
      ),
      home: HomePage(),
    );
  }

}