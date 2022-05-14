import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//ADICIONADO OS BOTOES E COLUNA
//diferença de Stateless e Statful
main() {
  runApp(
      PerguntaApp()); //esse é o componente raiz, todo o resto estara debaixo dele. tambem pode ser com arrow: "main() => runApp(PerguntaApp());"
}

class PerguntaApp extends StatelessWidget {
  // o componente StatelessWidget nao permite mudanças de valor, podendo ser convertida para Stateful, mas sera convertido manualmente para aprendizado
  var perguntaSelecionada = 0;
  // criado para dar sequencia após selecionar uma resposta

  void responder() {
    perguntaSelecionada++; //incrementar a outra pergunta quando clicar em "respondida"
    print('Respondida.');
  }

  @override
  Widget build(BuildContext context) {
    //árvore de widgets
    final perguntas = [
      //perguntas em forma de list; feito inferencia para string
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(children: <Widget>[
          Text(perguntas[perguntaSelecionada]), //
          ElevatedButton(
            child: Text('Resposta 1'),
            onPressed: responder,
          ),
          ElevatedButton(
            child: Text('Resposta 2'),
            onPressed: responder,
          ),
          ElevatedButton(
            child: Text('Resposta 3'),
            onPressed: responder,
          ),
        ]),
      ),
    );
  }
}
