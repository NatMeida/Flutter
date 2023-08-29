import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/usuariorepository.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usuarioForm = "";

  String senhaForm = "";

  TextEditingController usuarioTEC = TextEditingController();

  TextEditingController senhaTEC = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Exercício - Login com Validação'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://cdn4.iconfinder.com/data/icons/essentials-74/24/008_-_Lock-512.png",
              width: 210,
              height: 210,
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(children: [
                    const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 254, 254),
                      ),
                      child: SizedBox(
                        width: 300,
                        height: 50,
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 90, 43, 100),
                      ),
                      child: SizedBox(
                        width: 500,
                        height: 5,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: usuarioTEC,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Insira o nome de usuário para efetuar login.");
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Usuário",
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: senhaTEC,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return ("Insira a senha para efetuar login.");
                        }

                        if (senhaTEC.text.length < 4) {
                          return ("A senha deve conter ao menos 4 caracteres");
                        }

                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Senha",
                        prefixIcon: const Icon(Icons.key_rounded),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          usuarioForm = usuarioTEC.text;
                          senhaForm = senhaTEC.text;

                          try {
                            userController.login(usuarioForm, senhaForm);
                            Navigator.pushNamed(context, "/");
                          } on Exception catch (e) {
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      title: const Text("Erro ao efetuar login"),
                                      content: Text(e.toString()),
                                      icon: const Icon(Icons.account_circle_rounded),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text("OK"))
                                      ],
                                    ));
                          }
                        }
                      },
                      child: const Text(
                        "Entrar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
                ))
          ],
        )));
  }
}
