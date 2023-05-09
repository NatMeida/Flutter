import 'package:flutter/material.dart';
import 'package:flutter_application_1/contador.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Eu amo a Tânia'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                width: 400,
                height: 400,
              ),

              const SizedBox(height: 20),
              
              const Text(
                'Contador usando Stateful Widget',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),
              
              const Contador()
            ],
          )
        )
      )
    );
  }
}
