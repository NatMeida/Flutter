import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Inicial'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://cdn4.iconfinder.com/data/icons/essentials-74/24/008_-_Lock-512.png", width: 210, height: 210,),
            SizedBox(height: 20,),
            Text("Login realizado com sucesso!", style: TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            MaterialButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Sair")
            )
          ],
        ),
      ),
    );
  }
}