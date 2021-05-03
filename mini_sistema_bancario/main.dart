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

  //print -> Imprime informações no console
  print(agencia1);
}
