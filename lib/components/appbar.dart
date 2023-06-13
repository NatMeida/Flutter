import 'package:flutter/material.dart';

class NavBar extends AppBar {
  NavBar(BuildContext context, {Key? key, required String title}) : super(
      key: key,
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () => Navigator.pushNamed(context, '/'),
          icon: const Icon(Icons.home)
        ),
        IconButton(
          onPressed: () => Navigator.pushNamed(context, '/cadastro'),
          icon: const Icon(Icons.add)
        ),
        IconButton(
          onPressed: () => Navigator.pushNamed(context, '/consulta'),
          icon: const Icon(Icons.search),
        ),
      ],
    );
}
