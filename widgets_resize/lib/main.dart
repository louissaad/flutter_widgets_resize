import 'package:flutter/material.dart';
//This project is created by Louis Saad to demonstrate how a signle variable can change and resize many app components!
dynamic color;
double width, height;
dynamic text;
//set the theme =2 and watch how the widget will resize!
dynamic theme = 1;

void main() {
  if (theme == 1) {
    height = 200;
    width = 200;
    color = Colors.blueGrey;
    text = Text('SMALL CUBE');
  } else {
    if (theme == 2) {
      height = 400;
      width = 400;
      color = Colors.red;
      text = Text('LARGE CUBE');
    } else {
      theme = 1;
      main();
    }
  }
  runApp(MyCard());
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: Center(
          child: Container(
            color: color,
            child: Center(child: text),
            height: height,
            width: width,
          ),
        ),
      ),
    );
  }
}
