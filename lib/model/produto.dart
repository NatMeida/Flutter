class Produto {
  final String _nome;
  final double _preco;
  final int _quantidade;

  Produto(this._nome, this._preco, this._quantidade);

  String get nome => _nome;
  double get preco => _preco;
  int get quantidade => _quantidade;

  @override
  String toString() {
    return "Nome: $_nome\nPreço: $_preco\nQuantidade: $_quantidade";
  }
}
