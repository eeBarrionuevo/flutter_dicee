import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
      MaterialApp(
          home: Scaffold(
              backgroundColor: Colors.redAccent,
              appBar: AppBar(
                title: Text("Dicee App"),
                backgroundColor: Colors.redAccent,
              ),
              body: DiceePage()
          )
      )
  );
}
class DiceePage extends StatefulWidget {

  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image(
                image: AssetImage("assets/images/dice$leftDiceNumber.png"),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: (){
                leftDiceNumber = Random().nextInt(6) + 1;
                rightDiceNumber = Random().nextInt(6) + 1;
              },
              child: Image(
                image: AssetImage("assets/images/dice$rightDiceNumber.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



