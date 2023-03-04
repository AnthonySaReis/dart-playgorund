double regraDeTres(
    {double valor1 = 0,
    double valor2 = 0,
    double valor3 = 0,
    double valor4 = 0}) {
  if (valor1 == 0 && valor2 == 0) {
    throw ArgumentError('Apresente valores válidos.');
  }
  if (valor1 == 0) {
    return valor2 * valor4 / valor3;
  }
  if (valor2 == 0) {
    return valor1 * valor3 / valor4;
  }
  if (valor3 == 0) {
    return valor4 * valor1 / valor2;
  }
  if (valor4 == 0) {
    return valor3 * valor2 / valor1;
  }
  throw ArgumentError('Um valor de entrada deve estar vazio.');
}

void main() {
  double x = regraDeTres(valor1: 2, valor2: 4, valor4: 10);
  print(x);
  double y = regraDeTres(valor1: 2, valor3: 4, valor4: 8);
  print(y);
}
