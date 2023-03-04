/*O (IMC) índice de massa corporal é baseado na altura e peso do individuo.
O calculo é representado por Dividir o peso pela Altura ao quadradro²

Cria uma função que realize o calculo de IMC.*/

void main(List<String> arguments) {
  print("Entre com o peso: ");
  double peso = double.parse(stdin.readLineSync()!);

  print("Entre com a altura: ");
  double altura = double.parse(stdin.readLineSync()!);
  var imc = calcularIMC(peso, altura);
  print(imc.toStringAsFixed(2));
}

double calcularIMC(double peso, double altura) {
  return (peso / (altura * altura));
}
