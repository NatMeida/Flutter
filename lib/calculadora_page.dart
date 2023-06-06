import 'package:flutter/material.dart';
import 'package:flutter_application_1/calculadora.dart';

class CalculadoraPage extends StatelessWidget {
  const CalculadoraPage(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadorinha"),
        backgroundColor: Colors.pink[200],
      ),
      body: const Center(
        child: Calculadora()
      )
    );
  }
}
