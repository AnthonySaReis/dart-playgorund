main() {
  validadorCpf cpf = validadorCpf('11144477735');

  if (cpf.validarCpf()) {
    print('CPF válido!');
  } else {
    print('CPF inválido!');
  }
}

class validadorCpf {
  String _cpf;

  validadorCpf(this._cpf);

  bool validarCpf() {
    if (_cpf.length != 11) {
      return false;
    } else {
      //calcular primeiro dígito
      var a = 2;
      int total = 0;

      for (var i = 8; i >= 0; i--) {
        var num = int.parse(_cpf[i]);
        var temp = num * a;
        total = total + temp;
        a += 1;
      }

      var primeiroDigito = 0;

      total % 11 < 2
          ? primeiroDigito = 0
          : primeiroDigito = (11 - (total % 11));

      if (int.parse(_cpf[9]) == primeiroDigito) {
        if (primeiroDigito < 2) {
          print("O valor do primeiro dígito verificar é 0");
        } else {
          print("O valor do primeiro dígito verificar é $primeiroDigito");
        }
      } else {
        print("Erro no primeiro dígito!");
        return false;
      }

      //calcular segundo digito
      a = 2;
      total = 0;

      for (var i = 9; i >= 0; i--) {
        var num = int.parse(_cpf[i]);
        var temp = num * a;
        total = total + temp;
        a += 1;
      }

      var segundoDigito = 0;

      total % 11 < 2 ? segundoDigito = 0 : segundoDigito = (11 - (total % 11));

      if (int.parse(_cpf[10]) == segundoDigito) {
        if (segundoDigito < 2) {
          print("O valor do segundo dígito verificar é 0");
        } else {
          print("O valor do segundo dígito verificar é $segundoDigito");
        }
      } else {
        print("Erro no segundo dígito!");
        return false;
      }
    }
    return true;
  }
}
