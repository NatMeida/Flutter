import 'package:flutter/material.dart';

class BaseLayout extends Scaffold {
  BaseLayout(BuildContext context, {Key? key, required String title, required Widget body}) : super(
    key: key,
    appBar: AppBar(
      title: Text(title),
      backgroundColor: Colors.amber,
    ),
    body: body
    //a babi veio aqui
  );
}
