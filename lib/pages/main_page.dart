import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("oi na"),
          TextButton(onPressed: () => Navigator.pushNamed(context, "/contacts"), child: const Text("Contatos"))
        ],
      ),
    );
  }
}
