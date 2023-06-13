import 'package:flutter/material.dart';
import 'package:flutter_application_1/aluno_repository.dart';

class Consulta extends StatelessWidget {
  const Consulta({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: AlunoRepository.getLista()
        .map((e) => Text("Nome: ${e.nome}, RA: ${e.ra}")).toList()
    );
  }
}
