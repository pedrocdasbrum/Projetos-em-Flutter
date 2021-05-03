import 'endereco.dart';

class Cliente {
  String nome;
  String rg;
  String cpf;
  String telefoneParaContato;
  String email;
  Endereco endereco;

  //Método Construtor
  Cliente({
    required this.nome,
    required this.rg,
    required this.cpf,
    required this.telefoneParaContato,
    required this.email,
    required this.endereco,
  });

  //Getters
  String get getNome => this.nome;
  String get getRg => this.rg;
  String get getCpf => this.cpf;
  String get getTelefoneParaContato => this.telefoneParaContato;
  String get getEmail => this.email;
  Endereco get getEndereco => this.endereco;

  //Setters
  set setNome(String valor) => this.nome = valor.trim();
  set setRg(String valor) => this.rg = valor.trim();
  set setCpf(String valor) => this.cpf = valor.trim();
  set setTelefoneParaContato(String valor) =>
      this.telefoneParaContato = valor.trim();
  set setEmail(String valor) => this.email = valor.trim();
  set setEndereco(Endereco valor) => this.endereco = valor;

  @override
  String toString() {
    return "Cliente: $nome."
        "\nDados: RG $rg, CPF $cpf e endereço $endereco."
        "\nContato pelo e-mail: $email e/ou número de telefone: $telefoneParaContato.";
  }
}
