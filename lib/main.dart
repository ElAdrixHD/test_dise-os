import 'package:disenos/src/pages/basic_page.dart';
import 'package:disenos/src/pages/botones_page.dart';
import 'package:disenos/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Diseños",
      initialRoute: "/botones",
      routes: {
        "/" : (context) => BasicPage(),
        "/scroll" : (context) => ScrollPage(),
        "/botones" : (context) => BotonesPages(),
      },
    );
  }
}