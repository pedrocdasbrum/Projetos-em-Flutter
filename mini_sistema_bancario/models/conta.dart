import 'agencia.dart';
import 'cliente.dart';

abstract class Conta {
  int numero;
  Agencia agencia;
  Cliente cliente;
  double saldo;

  //Método Construtor
  Conta({
    required this.numero,
    required this.agencia,
    required this.cliente,
    required this.saldo,
  });

  String obterSaldo() {
    return "Senhor(a) ${cliente.nome}, o saldo atual da sua conta de número $numero é de R\$ $saldo.";
  }

  double Sacar(double valorDoSaque) {
    this.saldo = this.saldo - valorDoSaque;
    return valorDoSaque;
  }

  void Depositar(double valorDoDeposito) {
    this.saldo = this.saldo + valorDoDeposito;
  }

  void Transferir(double valorDaTransferencia, Conta contaDestino) {
    this.Sacar(valorDaTransferencia);
    contaDestino.Depositar(valorDaTransferencia);
  }

  //getters
  int get getNumero => this.numero;
  Agencia get getAgencia => this.agencia;
  Cliente get getCliente => this.cliente;
  double get getSaldo => this.saldo;
  
  //setters
  set setNumero(int valor) => this.numero = valor;
  set setAgencia(Agencia valor) => this.agencia = valor;
  set setCliente(Cliente valor) => this.cliente = valor;
  set setSaldo(double valor) => this.saldo = valor;
}
