import 'package:flutter/material.dart';

void main(){
  runApp(const Mausam());
}

class Mausam extends StatelessWidget {
  const Mausam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('Mausam Donna'),
        
      ),
    );
  }
}