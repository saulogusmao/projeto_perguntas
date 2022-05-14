import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(
      PerguntaApp()); //esse é o componente raiz, todo o resto estara debaixo dele. tambem pode ser com arrow: "main() => runApp(PerguntaApp());"
}

class PerguntaApp extends StatelessWidget {
  // 'perguntaApp' é o widget e o 'MaterialApp' é um dos filhos - que é um dos itens diretos
  @override
  Widget build(BuildContext context) {
    //cada componente tem seu proprio contexto, o proprio flutter chamou o metodo build
    return MaterialApp(
      home: Text(
          'Olá Flutter!'), //parametros posicionais sao obrigatorios, os nomeados podem definir um padrao
    );
  }
}

// até aqui, é imprimido somente a frase "Ola Flutter" no app