import 'package:flutter/material.dart';
import 'calculator.dart';
import 'contact_me.dart';
import 'home_page.dart';
import 'dicee.dart';
import 'loading_screen.dart';
import 'package:portfolio/Weather/main.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      initialRoute: HomePage.id,
      routes: {
       // LoadingScreen.id:(context) => LoadingScreen(),
        HomePage.id: (context) => HomePage(),
        ContactMe.id: (context) => ContactMe(),
        MyApp.id: (context) => MyApp(),
        Calculator.id: (context) => Calculator(),
       Dicee.id: (context) => Dicee(),
      },
    );
  }
}
