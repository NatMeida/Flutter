import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cadastro.dart';
import 'package:flutter_application_1/pages/cadastro_aluno.dart';
import 'package:flutter_application_1/pages/cadastro_produto.dart';
import 'package:flutter_application_1/pages/consulta.dart';
import 'package:flutter_application_1/pages/consulta_aluno.dart';
import 'package:flutter_application_1/pages/consulta_produto.dart';
import 'package:flutter_application_1/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/cadastro': (context) => const CadastroPage(),
        '/cadastro/aluno': (context) => const CadastroAlunoPage(),
        '/cadastro/produto': (context) => const CadastroProdutoPage(),
        '/consulta': (context) => const ConsultaPage(),
        '/consulta/aluno': (context) => const ConsultaAlunoPage(),
        '/consulta/produto': (context) => const ConsultaProdutoPage()
      },
    );
  }
}
