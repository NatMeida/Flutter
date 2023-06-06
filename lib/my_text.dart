import 'package:flutter/material.dart';

class MyText extends StatefulWidget {
  const MyText({super.key});

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  String textoDigitado = '';
  TextEditingController campoTexto = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: campoTexto,
            onChanged: (value) {
              print(value);
              setState(() {
                textoDigitado = campoTexto.text;
              });
            },
            style: const TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 151, 74, 181),
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  textoDigitado = campoTexto.text;
                });
              },
              child: const SizedBox(
                  width: 100,
                  child: Text(
                    'Clique aqui',
                    textAlign: TextAlign.center,
                  ))),
          ElevatedButton(
              onPressed: () {
                textoDigitado = '';
                campoTexto.clear();
                setState(() {});
              },
              child: const SizedBox(
                  width: 100,
                  child: Text(
                    'Limpar',
                    textAlign: TextAlign.center,
                  ))),
          Text("Você digitou: $textoDigitado"),
        ]));
  }
}
