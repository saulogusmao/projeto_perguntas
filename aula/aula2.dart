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
      home: Scaffold(
        //scaffold é a estrutura, ctrl + space mostra as opções de parametros nomeados
        appBar: AppBar(
          //AppBar foi o componente digitado
          title: Text(
              'Perguntas'), //title requer o widget text, nao pode por string direto
        ),
        body: Text('Ola Adelia'),
      ),
    );
  }
}

// a frase foi substituida por widgets com titulo e outra frase abaixo
// componentes visiveis: RaisedButton, Text, Card, etc (o que o usuario vê)
//componentes invisiveis: Row, Column, ListView, etc (prover estrutura)