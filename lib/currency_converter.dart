import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 2.0,
        style: BorderStyle.none,
        strokeAlign: BorderSide.strokeAlignCenter,
      ),
      borderRadius: BorderRadius.all(Radius.circular(60)),
    );
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Color.fromARGB(108, 40, 15, 15)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Please Enter the Amount in USD',
                  hintStyle: TextStyle(color: Colors.white),
                  prefix: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.green,
                  filled: true,
                  fillColor: Colors.green,
                  focusedBorder: border,
                  enabledBorder: border, 
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
