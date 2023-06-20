import 'package:flutter/material.dart';

const routeIndex = {
  '/': 0,
  '/cadastro': 1,
  '/consulta': 2
};

class BottomBar extends BottomNavigationBar {
  BottomBar(BuildContext context, {super.key}) : super(
    items: [
      BottomNavigationBarItem(
        label: 'Home',
        icon: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        )
      ),
      BottomNavigationBarItem(
        label: 'Cadastro',
        icon: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, '/cadastro');
          },
        )
      ),
      BottomNavigationBarItem(
        label: 'Consulta',
        icon: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            Navigator.pushNamed(context, '/consulta');
          },
        )
      ),
    ],
    currentIndex: routeIndex[ModalRoute.of(context)?.settings.name] ?? 0,
  );
}
