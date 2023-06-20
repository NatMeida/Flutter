import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/consulta.dart';
import 'package:flutter_application_1/components/page.dart';
import 'package:flutter_application_1/controller/aluno_repository.dart';

class ConsultaAlunoPage extends StatelessWidget {
  const ConsultaAlunoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(context,
        title: "Consulta de Aunos",
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consulta(alunoList),
              TextButton(
                child: const Text("Cadastrar\nalunos"),
                onPressed: () =>
                    Navigator.pushNamed(context, "/cadastro/aluno"),
              )
            ],
          ),
        )));
  }
}
