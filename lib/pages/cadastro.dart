import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/page.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(context,
        title: "Cadastro",
        body: Center(
            child: SizedBox(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Selecione o cadastro:"),
              const SizedBox(height: 20),
              TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, "/cadastro/aluno"),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.apple),
                        Text("Alunos"),
                        SizedBox()
                      ])),
              TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, "/cadastro/produto"),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.shopping_basket),
                        Text("Produtos"),
                        SizedBox()
                      ])),
            ],
          ),
        )));
  }
}
