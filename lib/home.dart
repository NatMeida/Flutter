
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          const Icon(Icons.home,
            color: Colors.grey,
          ),
          IconButton(
            icon: const Icon(Icons.calculate),
            onPressed: () => Navigator.pushNamed(context, "/calculadora"),
          )
        ],
      ),
      body: const Center(
        child: Text("eu amo a tania")
      ),
    );
  }
}
