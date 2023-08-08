import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormCadastro extends StatefulWidget {
  const FormCadastro({super.key});

  @override
  State<FormCadastro> createState() => _FormCadastroState();
}

class _FormCadastroState extends State<FormCadastro> {
  final _raController = TextEditingController();
  final _nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _raController,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter(r"cl[0-9]{6}", allow: false, replacementString: "")
            ],
            validator: (value) {
              if (value == null) {
                return "Insira um RA!";
              }

              if (value.isEmpty) {
                return "RA não pode estar vazio";
              }

              if (!RegExp(r"^cl[0-9]{6}$").hasMatch(value)) {
                return "Digite um RA válido";
              }

              return null;
            }
          ),
          TextFormField(
            controller: _nameController,
            validator: (value) {
              if (value == null) {
                return "Insira um nome!";
              }

              if (value.isEmpty) {
                return "Nome não pode estar vazio";
              }

              if (!RegExp(r"^\w{2,15}$").hasMatch(value)) {
                return "Insira um nome válido!";
              }

              return null;
            },
            decoration: const InputDecoration(
              labelText: "Nome",
              prefixIcon: Icon(Icons.abc)
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState == null) return;
              if (!_formKey.currentState!.validate()) return;

              snacks();
            }, 
            child: const Text("Enviar")
          )
        ],
      ),
    );
  }

  /// biscoitos
  void snacks() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("oi isa")));
  }
}
