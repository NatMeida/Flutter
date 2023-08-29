import 'usuario.dart';

class UsuarioRepository {
  List<Usuario> getAll() {
    return usuarios;
  }

  Usuario? _loggedUser;

  Usuario? get loggedUser => _loggedUser;

  Usuario getUsuario(String usuario) {
    return usuarios.firstWhere((u) => u.usuario == usuario);
  }

  void login(String username, String password) {
    for (var user in usuarios) {
      if (user.usuario == username) {
        if (user.senha == password) {
          _loggedUser = user;
          return;
        } else {
          throw Exception("Senha incorreta");
        }
      }
    }

    throw Exception("Usuário não encontrado");
  }

  void logout() {
    _loggedUser = null;
  }

  void addUsuario(Usuario usuario) {
    usuarios.add(usuario);
  }

  void removeUsuario(Usuario usuario) {
    usuarios.remove(usuario);
  }
}

List<Usuario> usuarios = [
  Usuario(usuario: "tbasso", senha: "1234"),
  Usuario(usuario: "nat", senha: "0000"),
  Usuario(usuario: "meida", senha: "4321"),
];

final userController = UsuarioRepository();
