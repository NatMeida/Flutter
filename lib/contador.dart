import 'package:flutter/material.dart';
import 'package:flutter_application_1/conta_numeros.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  MyContador contador = MyContador();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        FloatingActionButton(
            onPressed: () => setState(() => contador.aumentar()), 
            child: const Text("-", style: TextStyle(fontSize: 30))),
        const SizedBox(width: 10),
        DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
            child: SizedBox(
                width: 60,
                height: 60,
                child: Center(
                  child: Text(contador.toString(),
                      style:
                          const TextStyle(fontSize: 20, color: Colors.white)),
                ))),
        const SizedBox(width: 10),
        FloatingActionButton(
            onPressed: () => setState(() => contador.diminuir()),
            child: const Text("+", style: TextStyle(fontSize: 30))),
      ]),
      const SizedBox(height: 10),
      Text('O valor do contador é:  ${contador.getNumero()}',
          style: const TextStyle(fontSize: 22))
    ]);
  }
}
