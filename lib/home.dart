// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //atributo
  int _indice = 0;

  //método
  void _itemClicado(int index){
    
    setState(() {
      _indice = index;
    });

    switch (index){
      case 0:
        Navigator.pushNamed(context, '/person');
        break;
      case 1:
        Navigator.pushNamed(context, '/basket');
        break;
      case 2:
        Navigator.pushNamed(context, '/favorite');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: (() {
              Navigator.pushNamed(context, '/person');
            }),
            icon: Icon(Icons.person)
          ),
          IconButton(
            onPressed: (() {
              Navigator.pushNamed(context, '/basket');
            }),
            icon: Icon(Icons.shopping_basket)
          ),
          IconButton(
            onPressed: (() {
              Navigator.pushNamed(context, '/favorite');
            }),
            icon: Icon(Icons.favorite)
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar (
        currentIndex: _indice,
        onTap: _itemClicado,

        items: const [
        BottomNavigationBarItem(
          icon: Icon (Icons.person),
          label: "Person"
        ),
        BottomNavigationBarItem(
          icon: Icon (Icons.shopping_basket),
          label: "Basket"
        ),
        BottomNavigationBarItem(
          icon: Icon (Icons.favorite),
          label: "Favorite"
        )
      ]),
    );
  }
}
