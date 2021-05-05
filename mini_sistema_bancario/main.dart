import 'models/cliente.dart';
import 'models/conta_corrente.dart';
import 'models/endereco.dart';
import 'models/agencia.dart';
import 'models/gerente.dart';

void main() {
  //Tipo nome = Construtor(parâmetros);
  Endereco endereco1 = Endereco(
      estado: "RS",
      cidade: "Porto Alegre",
      bairro: "Centro",
      numero: "78-A",
      rua: "Rua A");

  Endereco endereco2 = Endereco(
    numero: "23",
    bairro: "Ponto Nova",
    cidade: "Caxias do Sul",
    rua: "Rua B",
    estado: "RS",
  );

  Gerente gerente = Gerente(
    matricula: "123ABC",
    nome: "Jorge Silva",
    email: "jorge.silva@banco.com.br",
    telefoneParaContato: "12345",
    endereco: endereco2,
  );

  Agencia agencia1 = Agencia(45, endereco1, gerente);

  Cliente pedro = Cliente(
    nome: "Pedro",
    email: "pedro@web.com.br",
    cpf: "982.224.232-43",
    rg: "3233454",
    telefoneParaContato: "(51) 98342-3324",
    endereco: Endereco(
      rua: "Luis Camoes",
      numero: "12A",
      bairro: "Santo Antonio",
      cidade: "Porto Alegre",
      estado: "RS",
    ),
  );

  ContaCorrente conta1 = ContaCorrente(
    numero: 12346,
    cliente: pedro,
    limite: 30000,
    agencia: agencia1,
    saldo: 0,
  );

  //print -> Imprime informações no console
  print(agencia1);
}
