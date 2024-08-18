
import 'package:flutter/material.dart';


class CurrencyConverterMaterialPagee extends StatefulWidget {
  const CurrencyConverterMaterialPagee({super.key});
  @override
  State<CurrencyConverterMaterialPagee> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPagee> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  
  @override



  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width: 2.0,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
        borderRadius: BorderRadius.all(Radius.circular(50)));
    return Scaffold(
      backgroundColor:const  Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor:const  Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        title: const Text(
          "Currency Converter",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 149, 0), fontWeight: FontWeight.bold, fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "INR ${result!=0 ? result.toStringAsFixed(2): result.toStringAsFixed(0)}",
              style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                decoration: const InputDecoration(
                  hintText: "Enter the amount in USD",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Color.fromARGB(255, 255, 255, 255),
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 119, 0),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    maximumSize: const Size(double.infinity, double.infinity),
                    elevation: 15,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
                child: const Text(
                  'Convert',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class CurrencyConverterMaterialPage extends StatelessWidget {
  // const CurrencyConverterMaterialPage({super.key});
// 
  // @override
  // Widget build(BuildContext context) {
    // 
  // }
// }
