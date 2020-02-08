class UsuarioModel {
  String id;
  String nome;
  String email;
  String senha;
  String role;

  UsuarioModel({this.id, this.nome, this.email, this.senha, this.role});

  UsuarioModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    nome = json['nome'];
    email = json['email'];
    senha = json['senha'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.id;
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['senha'] = this.senha;
    data['role'] = this.role;
    return data;
  }
}