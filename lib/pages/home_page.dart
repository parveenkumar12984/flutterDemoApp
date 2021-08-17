import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double day = 300;
    String name = "Parveen";
    var ab = 20;

    return Scaffold(
        appBar: AppBar(
          title: Text("Dhurina"),
        ),
        body: Center(
          child: Container(
            child: Text("Welcome to $ab first $day $name App"),
          ),
        ),
        drawer: Drawer());
  }
}
