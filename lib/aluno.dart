// ignore_for_file: prefer_final_fields

class Aluno{
  //atributos
  int _ra = 0;
  String _nome = '';

  //construtor
  Aluno(this._ra, this._nome);

  //getters
  int get ra => _ra;
  String get nome => _nome;
  //setters
  set ra(int ra) => _ra = ra;
  set nome(String nome) => _nome = nome;

  

}
