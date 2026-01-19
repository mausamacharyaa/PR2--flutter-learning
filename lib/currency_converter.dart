import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});{
    print('constructor');
  }

  @override
  State<CurrencyConverterMaterialPage> createState() {
    print('createState');
    return _CurrencyConverterMaterialPageState();
  }
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
  @override
  Widget build(BuildContext context) {
    print('build fn');
    double result = 0;

    final TextEditingController textEditingController = TextEditingController();
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
      backgroundColor: Color.fromRGBO(0, 45, 0, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        elevation: 0,
        title: const Text("Currency converter", style: TextStyle(color: Color.fromARGB(255, 63, 5, 5))),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Color.fromARGB(108, 40, 15, 15)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Color.fromARGB(255, 146, 19, 19)),
                decoration: InputDecoration(
                  hintText: 'Please Enter the Amount in USD',
                  hintStyle: TextStyle(color: const Color.fromARGB(255, 201, 15, 15)),
                  prefix: const Icon(Icons.monetization_on),
                  prefixIconColor: Colors.green,
                  filled: true,
                  fillColor: Colors.green,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  result = double.parse(textEditingController.text) * 140;
                  build(context);
                },
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(Colors.black),
                  foregroundColor: const WidgetStatePropertyAll(Colors.cyanAccent),
                  minimumSize: const WidgetStatePropertyAll(Size(double.infinity, 50)),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
