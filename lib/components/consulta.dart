import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/consulta_item.dart';
import 'package:flutter_application_1/controller/repository.dart';

class Consulta<T> extends StatelessWidget {
  final Repository<T> _repo;

  const Consulta(this._repo, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _repo.list.map((el) => ItemConsulta(child: el)).toList()),
    );
  }
}
