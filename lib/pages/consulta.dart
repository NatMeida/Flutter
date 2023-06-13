import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/consulta.dart';
import 'package:flutter_application_1/components/page.dart';

class ConsultaPage extends StatelessWidget {
  const ConsultaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppPage(context,
      title: "Consulta",
      body: const Center(
        child: Consulta()
      )
    );
  }
}
