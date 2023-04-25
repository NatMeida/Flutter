// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatelessWidget {

  //atributos
  final String texto;
  final Color cor;
  final double fontSize;


  const MyWidget(this.texto, this.cor, this.fontSize , {super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: cor,
      ),
      child: Text(texto, style: TextStyle(fontSize: fontSize),)
    );
  }
}
