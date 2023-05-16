import 'package:flutter/material.dart';

class Basket extends StatelessWidget {
  const Basket({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Basket"),
          ElevatedButton(onPressed: (() {
            Navigator.pushNamed(context, '/');
          }),
          child: const Text("Voltar"))
        ]
      ),
    );
  }
}
