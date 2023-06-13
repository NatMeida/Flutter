import 'package:flutter_application_1/aluno.dart';

class AlunoRepository {
  //atributo
  List<Aluno> _listaAlunos = [];

  static final AlunoRepository _instancia = AlunoRepository();

  static AlunoRepository get instancia {
    return _instancia;
  }

  static void adicionar(Aluno al) {
    _instancia._adicionar(al);
  }

  static void imprimir() {
    _instancia._imprimir();
  }

  static List<Aluno> getLista() => _instancia._listaAlunos;

  //construtor
  AlunoRepository() {
    _listaAlunos = [];
  }

  void _adicionar(Aluno al) {
    _listaAlunos.add(al);
  }

  void _imprimir () {
    for (var i = 0; i < _listaAlunos.length; i++) {
      print("RA: ${_listaAlunos[i].ra} - Nome: ${_listaAlunos[i].nome}");
    }
  }
}
