/* Esta é uma solução simples para tratar erros e
   exceções generalizadas, sem um tipo específico */

// alias para try
attemp(Function t) {
  try {
    t();
  } catch(e) {
    print(e.toString());
  }
  finally {
    print("attemp() : tratamento de erros e exceções feito.");
  }
}

// main
main() {
  var lista = const [ '@', '!', '#' ];
  
  // se houver erros, a função irá tratar.
  attemp(() {
    lista.add('%');
  });
}
