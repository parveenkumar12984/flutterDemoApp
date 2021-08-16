import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double day = 300;
    String name = "Parveen";
    double pii = 3.14;
    bool a = true;
    num abc = 30;
    var ab = 20;
    const pi = 3.14;
    final as = 5;
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Center(
          child: Container(
            child: Text("Welcome to $ab first $day $name App"),
          ),
        ),
        drawer: Drawer());
  }
}
