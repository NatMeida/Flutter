
import 'package:flutter/material.dart';


class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Person"),
        ]
      ),
    );
  }
}
