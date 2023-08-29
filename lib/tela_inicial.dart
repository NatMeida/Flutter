import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/usuariorepository.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    setState(() {});

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Inicial'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://cdn4.iconfinder.com/data/icons/essentials-74/24/008_-_Lock-512.png",
              width: 210,
              height: 210,
            ),
            const SizedBox(
              height: 20,
            ),
            userController.loggedUser == null
                ? const Text("Nenhum usuário logado")
                : Text(
                    "Olá, ${userController.loggedUser!.usuario}!",
                    style: const TextStyle(fontSize: 20),
                  ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
                onPressed: () {
                  if (userController.loggedUser == null) {
                    Navigator.pushNamed(context, "/login");
                  } else {
                    setState(() {
                      userController.logout();
                    });
                  }
                },
                child: userController.loggedUser == null
                    ? const Text("Login")
                    : const Text("Sair"))
          ],
        ),
      ),
    );
  }
}
