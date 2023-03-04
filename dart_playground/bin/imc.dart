/*O (IMC) índice de massa corporal é baseado na altura e peso do individuo.
O calculo é representado por Dividir o peso pela Altura ao quadradro²

Cria uma função que realize o calculo de IMC.*/

void main(List<String> arguments) {
  var peso = 90;
  var altura = 1.75;
  var imc = calcularIMC(peso, altura);
  print(imc);
}

double calcularIMC(var peso, var altura) {
  return (peso / (altura * altura));
}
