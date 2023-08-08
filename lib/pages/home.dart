import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/form.dart';
import 'package:flutter_application_1/components/page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(context,
      title: "Home",
      body: const Center(
        child: FormCadastro()
      )
    );
  }
}
