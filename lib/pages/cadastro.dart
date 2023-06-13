import 'package:flutter/material.dart';
import 'package:flutter_application_1/aluno_repository.dart';
import 'package:flutter_application_1/components/page.dart';
import 'package:flutter_application_1/form_cadastro.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  int ra = 0;
  String nome = '';

  TextEditingController campoRA = TextEditingController();
  TextEditingController campoNome = TextEditingController();

  AlunoRepository listaAl = AlunoRepository();

  @override
  Widget build(BuildContext context) {
    return AppPage(context,
      title: "Cadastro",
      body: const Center(
        child: Cadastro(),
      )
    );
  }
}
