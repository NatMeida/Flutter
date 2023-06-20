import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/cadastro_produto.dart';
import 'package:flutter_application_1/components/page.dart';

class CadastroProdutoPage extends StatelessWidget {
  const CadastroProdutoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(context,
      title: "Cadastro de Produto",
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CadastroProduto(),
            TextButton(
              child: const Text("Consultar produtos"),
              onPressed: () {
                Navigator.pushNamed(context, "/consulta/produto");
              },
            )
          ],
        ),
      )
    );
  }
}
