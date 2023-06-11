import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculadora.dart';

class CalculadoraPage extends StatelessWidget {
  const CalculadoraPage(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadorinha"),
        backgroundColor: Color.fromARGB(255, 244, 143, 177),
      ),
      body: const Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 205, 216),
        body: Center(
          child: Calculadora()
        ),
      )
    );
  }
}
