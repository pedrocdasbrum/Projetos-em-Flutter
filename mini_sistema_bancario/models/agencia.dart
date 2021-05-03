import 'endereco.dart';
import 'gerente.dart';

class Agencia {
  int _numero;
  Endereco _endereco;
  Gerente _gerente;

  //Método Construtor
  Agencia(this._numero, this._endereco, this._gerente);

  //getters
  int get numero => this._numero;
  Endereco get endereco => this._endereco;
  Gerente get gerente => this._gerente;

  //setters
  set numero(int valor) => this._numero = valor;
  set endereco(Endereco valor) => this._endereco = valor;
  set gerente(Gerente valor) => this._gerente = valor;

  @override
  String toString() {
    return "Agência $numero, localizada na rua ${endereco.rua} nº ${endereco.numero}, no bairro ${endereco.bairro} - ${endereco.cidade}, ${endereco.estado}; e é de responsabilidade do Sr(a) ${gerente.nome}.";
  }
}
