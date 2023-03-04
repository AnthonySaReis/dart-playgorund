int fibonacci(int n) {
  if (n <= 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void main() {
  // Imprime os primeiros 10 números da sequência de Fibonacci
  for (int i = 0; i < 10; i++) {
    print(fibonacci(i));
  }
}