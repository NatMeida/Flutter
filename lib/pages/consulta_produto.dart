import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/consulta.dart';
import 'package:flutter_application_1/components/page.dart';
import 'package:flutter_application_1/controller/produto_repository.dart';

class ConsultaProdutoPage extends StatelessWidget {
  const ConsultaProdutoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(context,
        title: "Consulta de Produtos",
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consulta(produtoList),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/cadastro/produto'),
                  child: const Text("Cadastrar\nprodutos"))
              ],
            ),
          )
        )
    );
  }
}
