import 'package:flutter/material.dart';

class MyLamp extends StatefulWidget {
  const MyLamp({super.key});


  @override
  State<MyLamp> createState() => _MyLampState();
}

class _MyLampState extends State<MyLamp> {
  //String link = 'https://images.unsplash.com/photo-1612835362596-4b7b7b0b0b0b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFtcHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'

  String link = "https://i.stack.imgur.com/b983w.jpg";
  String mensagem = "Lâmpada apagada";

  void mudaLampada() {
    if (mensagem == "Lâmpada apagada") {
      link = "https://i.stack.imgur.com/ybxlO.jpg";
      mensagem = "Lâmpada acesa";
    } else {
      mensagem = "Lâmpada apagada";
      link = "https://i.stack.imgur.com/b983w.jpg";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(link),
            Text(mensagem),
            ElevatedButton(
              onPressed: () {
                mudaLampada();
                setState(() {});
              },
              child: const Text("Aperte aqui"),
            )
          ]
        )
      )
    );
  }
}
