import 'package:flutter/material.dart';

import '../controller/produto_repository.dart';
import '../model/produto.dart';

class CadastroProduto extends StatefulWidget {
  const CadastroProduto({super.key});

  @override
  State<CadastroProduto> createState() => _CadastroProdutoState();
}

class _CadastroProdutoState extends State<CadastroProduto> {
  TextEditingController campoNome = TextEditingController();
  TextEditingController campoPreco = TextEditingController();
  TextEditingController campoQuantidade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Form(
        child: Column(
          children: [
            const Text("Nome:"),
            TextField(
              controller: campoNome,
            ),
            const SizedBox(height: 20),
            const Text("Preço:"),
            TextField(
              controller: campoPreco,
            ),
            const SizedBox(height: 20),
            const Text("Quantidade:"),
            TextField(
              controller: campoQuantidade,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    var nome = campoNome.text;
                    campoNome.text = "";
                    var preco = double.parse(campoPreco.text);
                    campoPreco.text = "";
                    var quantidade = int.parse(campoQuantidade.text);
                    campoQuantidade.text = "";
                    Produto p = Produto(nome, preco, quantidade);
                    produtoList.add(p);
                    produtoList.printLast();
                  });
                },
                child: const Text('Cadastrar')),
          ],
        ),
      ),
    );
  }
}
