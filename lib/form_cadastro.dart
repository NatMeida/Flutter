import 'package:flutter/material.dart';
import 'package:flutter_application_1/aluno_repository.dart';

import 'aluno.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  int ra = 0;
  String nome = '';

  TextEditingController campoRA = TextEditingController();
  TextEditingController campoNome = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text("RA:"),
      TextField(
        controller: campoRA,
      ),
      const Text("Nome:"),
      TextField(
        controller: campoNome,
      ),
      ElevatedButton(
          onPressed: () {
            setState(() {
              ra = int.parse(campoRA.text);
              nome = campoNome.text;
              Aluno al = Aluno(ra, nome);
              AlunoRepository.adicionar(al);
              AlunoRepository.imprimir();
              setState(() {});
            });
          },
          child: const Text('Cadastrar')),
    ]);
  }
}
