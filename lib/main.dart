import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/base_layout.dart';
import 'package:flutter_application_1/pages/contact_page.dart';
import 'package:flutter_application_1/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      routes: {
        "/": (context) => BaseLayout(context, title: "Início", body: const MainPage()),
        "/contacts": (context) => BaseLayout(context, title: "Contatos", body: const ContactPage())
      },
    );
  }
}
