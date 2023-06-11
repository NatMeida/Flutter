import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({super.key});

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final valor1 = TextEditingController();
  final valor2 = TextEditingController();
  var resultado = "";

  double getValor1() {
    return double.parse(valor1.text);
  }

  double getValor2() {
    return double.parse(valor2.text);
  }

  void somar() {
    setState(() {
      resultado = (getValor1() + getValor2()).toString();
    });
  }

  void subtrair() {
    setState(() {
      resultado = (getValor1() - getValor2()).toString();
    });
  }

  void multiplicar() {
    setState(() {
      resultado = (getValor1() * getValor2()).toString();
    });
  }

  void dividir() {
    setState(() {
      resultado = (getValor1() / getValor2()).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 400,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.calculate, color: Colors.pink, size: 100),
            Text("Calculadora Rosa",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 244, 143, 177)
              ),
            ),
          ]
        ),
        TextField(
          controller: valor1,
          decoration: const InputDecoration(
            labelText: "Valor 1",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(width: 4),
            )
          )
        ),
        TextField(
          controller: valor2,
          decoration: const InputDecoration(
            labelText: "Valor 2",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(width: 4)
            ),
            fillColor: Color.fromARGB(255, 244, 143, 177),
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: somar,
              child: const SizedBox(
                width: 26,
                child: Text("+",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            ElevatedButton(
              onPressed: subtrair,
              child: const SizedBox(
                width: 26,
                child: Text("-",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            ElevatedButton(
              onPressed: multiplicar,
              child: const SizedBox(
                width: 26,
                child: Text("*",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            ElevatedButton(
              onPressed: dividir,
              child: const SizedBox(
                width: 26,
                child: Text("/",
                  textAlign: TextAlign.center,
                ),
              )
            ),
            ElevatedButton(
              onPressed: () {
                valor1.clear();
                valor2.clear();
              },
              child: const SizedBox(
                width: 26,
                child: Text("CE",
                  textAlign: TextAlign.center,
                ),
              )
            ),
          ]
        ),
        Text("Resultado:  $resultado", style: const TextStyle(fontSize: 20, color: Colors.pink)),
      ],
    ));
  }
}
