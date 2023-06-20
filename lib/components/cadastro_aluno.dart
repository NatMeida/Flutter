import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/aluno_repository.dart';

import '../model/aluno.dart';

class CadastroAluno extends StatefulWidget {
  const CadastroAluno({super.key});

  @override
  State<CadastroAluno> createState() => _CadastroAlunoState();
}

class _CadastroAlunoState extends State<CadastroAluno> {
  int ra = 0;
  String nome = '';

  TextEditingController campoRA = TextEditingController();
  TextEditingController campoNome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Form(
        child: Column(children: [
          const Text("RA:"),
          TextField(
            controller: campoRA,
          ),
          const SizedBox(height: 20),
          const Text("Nome:"),
          TextField(
            controller: campoNome,
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  ra = int.parse(campoRA.text);
                  campoRA.text = "";
                  nome = campoNome.text;
                  campoNome.text = "";
                  Aluno al = Aluno(ra, nome);
                  alunoList.add(al);
                  alunoList.printLast();
                });
              },
              child: const Text('Cadastrar')),
        ]),
      ),
    );
  }
}
