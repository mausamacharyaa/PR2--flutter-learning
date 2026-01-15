import 'package:demo_app/currency_converter.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Mausam());
}

class Mausam extends StatelessWidget {
  const Mausam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}