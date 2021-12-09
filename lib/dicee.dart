import 'dart:math';
import 'package:flutter/material.dart';

class Dicee extends StatefulWidget {
  static const id = 'Dicee';

  const Dicee({Key? key}) : super(key: key);

  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  var leftDiceNumber = 2;
  var rightDiceNumber = 2;

  void changeDiceNumber() {
    //to quickly change the variable and when clicking it changes he dice number
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1; //1-6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          title: Text('Dicee'),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      leftDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      rightDiceNumber = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                ),
              ),
            ],
          ),
        ),);
  }
}
