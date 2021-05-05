import 'endereco.dart';

abstract class Pessoa {
  String nome;
  String telefoneParaContato;
  String email;
  Endereco endereco;

  Pessoa({
    required this.nome,
    required this.telefoneParaContato,
    required this.email,
    required this.endereco,
  });
}
