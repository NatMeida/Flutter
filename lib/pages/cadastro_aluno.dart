import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/page.dart';
import 'package:flutter_application_1/components/cadastro_aluno.dart';

class CadastroAlunoPage extends StatelessWidget {
  const CadastroAlunoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(context,
        title: "Cadastro de Aluno",
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CadastroAluno(),
              TextButton(
                child: const Text("Consultar alunos"),
                onPressed: () => {
                  Navigator.pushNamed(context, '/consulta/aluno'),
                },
              )
            ],
          ),
        ));
  }
}
