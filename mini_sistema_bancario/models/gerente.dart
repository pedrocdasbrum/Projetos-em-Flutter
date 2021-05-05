import 'endereco.dart';
import 'pessoa.dart';

class Gerente extends Pessoa {
  String matricula;
  String nome;
  String email;
  String telefoneParaContato;
  int? ramal;
  Endereco endereco;

  //Método Construtor
  Gerente({
    required this.matricula,
    required this.nome,
    required this.email,
    required this.telefoneParaContato,
    this.ramal,
    required this.endereco,
  }) : super(
          nome: nome,
          endereco: endereco,
          email: email,
          telefoneParaContato: telefoneParaContato,
        );

  //getters
  String get getMatricula => this.matricula;
  String get getNome => this.nome;
  String get getEmail => this.email;
  String get getTelefoneParaContato => this.telefoneParaContato;
  int? get getRamal => this.ramal;
  Endereco get getEndereco => this.endereco;

  //setters
  set setMatricula(String valor) => this.matricula = valor.trim();
  set setNome(String valor) => this.nome = valor.trim();
  set setEmail(String valor) => this.email = valor.trim();
  set setTelefoneParaContato(String valor) =>
      this.telefoneParaContato = valor.trim();
  set setRamal(int valor) => this.ramal = valor;
  set setEndereco(Endereco valor) => this.endereco = valor;

  @override
  String toString() {
    return "Gerente $nome."
        "\nDados: matrícula $matricula, ramal $ramal e endereço $endereco."
        "\nContato: via e-mail $email e/ou telefone $telefoneParaContato.";
  }
}
