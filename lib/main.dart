import 'package:flutter/material.dart';
import "package:test/currency_converter1.dart";

//import 'package
void main() {
  runApp(const MyApp());

  //Designs
  //Material design
  //Cupertino design
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverter1(),
    );
  }
}
