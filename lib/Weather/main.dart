import 'package:flutter/material.dart';

import 'loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const id ='MYAPP';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
