import 'package:first/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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

    return MaterialApp(
      home: HomePage(),
    );
  }
}
