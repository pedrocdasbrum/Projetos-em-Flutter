class Endereco {
  String rua;
  String numero;
  String bairro;
  String cidade;
  String estado;

  //Método Construtor
  Endereco({
    required this.rua,
    required this.numero,
    required this.bairro,
    required this.cidade,
    required this.estado,
  });

  //getters
  String get getRua => this.rua;
  String get getNumero => this.numero;
  String get getBairro => this.bairro;
  String get getCidade => this.cidade;
  String get getEstado => this.estado;

  //setters
  set setRua(String valor) => this.rua = valor.trim();
  set setNumero(String valor) => this.numero = valor.trim();
  set setBairro(String valor) => this.bairro = valor.trim();
  set setCidade(String valor) => this.cidade = valor.trim();
  set setEstado(String valor) => this.estado = valor.trim();
}
