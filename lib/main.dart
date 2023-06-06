import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nat Formulario'),
        ),
        body: const Center(
          child: MyText()
        )
      )
    );
  }
}
