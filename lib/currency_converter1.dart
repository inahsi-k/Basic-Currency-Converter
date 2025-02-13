//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverter1 extends StatefulWidget {
  const CurrencyConverter1({super.key});
  @override
  State<CurrencyConverter1> createState() {
    return _CurrencyConverter1State();
  }
}

class _CurrencyConverter1State extends State<CurrencyConverter1> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  //initstate=>gets executed right before the build function

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Currency converter",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 212, 205, 225),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center, // vertically
            children: [
              Text(
                  "INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}",
                  style: const TextStyle(
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 7))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(color: Color.fromARGB(255, 0, 3, 5)),
                  decoration: InputDecoration(
                    hintText: "Please Enter the Amount In USD:",
                    hintStyle:
                        const TextStyle(color: Color.fromARGB(255, 10, 1, 1)),
                    prefixIcon: const Icon(Icons.monetization_on,
                        color: Color.fromARGB(255, 6, 0, 0)),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2.0,
                        color: Color.fromARGB(255, 15, 2, 2),
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    //enabledBorder: UnderlineInputBorder()
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      try {
                        result = double.parse(textEditingController.text) * 85;
                      } catch (e) {
                        result = 0;
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    //textbutton.styleform in place of buttonstyletaaki baar baar widgetStateproperty na likhna pade
                    elevation: 10,
                    backgroundColor: Colors.black,
                    foregroundColor: (Colors.white),
                    minimumSize: (const Size(
                        double.infinity, 50)), //max size le lena h screen ka
                    //shape: WidgetStatePropertyAll(BeveledRectangleBorder()),
                  ),
                  child: const Text("Convert"),
                ),
              ),
            ],
          ),
        ));
  }
}
