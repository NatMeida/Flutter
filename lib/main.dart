// ignore_for_file: prefer_const_constructors

import 'package:aula25_04/my_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Text("Eu amo a aula da Tânia na casa amarela <3", style: TextStyle(fontSize:30),),
              MyWidget("Eu amo a aula da Tânia na casa amarela <3", Colors.amber, 30),
              SizedBox(height: 20,),
              //Text("Eu amo a aula da Tânia na casa azul <3", style: TextStyle(fontSize:20),),
              MyWidget("Eu amo a aula da Tânia na casa azul <3", Colors.blue, 25),
              SizedBox(height: 40,),
              MyWidget("Eu amo a aula da Tânia na casa verde <3", Colors.green, 20),
              SizedBox(height: 40,),
              Image.network("https://images.pexels.com/photos/13200185/pexels-photo-13200185.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", height: 200,),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text("aula", style: TextStyle(fontSize: 20),),
                  SizedBox(width: 20,),
                  Text("da", style: TextStyle(fontSize: 20),),
                  SizedBox(width: 20,),
                  Text("Tânia", style: TextStyle(fontSize: 20),),
                  SizedBox(width: 20,),
                  Text("<3", style: TextStyle(fontSize: 20),), 
                ],
              )
            ],
          )
        )
      )
    );
  }
}