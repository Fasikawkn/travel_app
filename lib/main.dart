import 'package:flutter/material.dart';
import 'package:travel_app/screens/home_page.dart';
// @dart=2.9
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(fontFamily: "Mulish"),
        home: HomePage());
  }
}
