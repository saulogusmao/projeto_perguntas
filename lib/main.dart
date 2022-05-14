import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() {
  runApp(
      PerguntaApp()); //esse é o componente raiz, todo o resto estara debaixo dele. tambem pode ser com arrow: "main() => runApp(PerguntaApp());"
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  var pontuacaoTotal = 0;
  final perguntas = [
    {
      'texto': 'Qual Estado voce nasceu?',
      'respostas': [
        {'texto': 'Minas Gerais', 'pontuacao': 0},
        {'texto': 'São Paulo', 'pontuacao': 0},
        {'texto': 'Espírito Santo', 'pontuacao': 0},
        {'texto': 'Rio de Janeiro', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Em qual cidade?',
      'respostas': [
        {'texto': 'Suzano', 'pontuacao': 0},
        {'texto': 'Campo Grande', 'pontuacao': 0},
        {'texto': 'Itabira', 'pontuacao': 0},
        {'texto': 'Governador Valadares', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Qual é a sua profissão?',
      'respostas': [
        {'texto': 'Programador', 'pontuacao': 1},
        {'texto': 'Dentista', 'pontuacao': 5},
        {'texto': 'Médica', 'pontuacao': 6},
        {'texto': 'Bixeiro', 'pontuacao': 10},
      ],
    },
  ];

  // criado para dar sequencia após selecionar uma resposta
  void responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
        pontuacaoTotal += pontuacao;
      });
    }
  }

  void reiniciarQuestionario() {
    setState(() {
      perguntaSelecionada = 0;
      pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    //se tem pergunta selecionada
    return perguntaSelecionada <
        perguntas.length; //se tiver, deve ser menor que o tamanho da lista
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: perguntas,
                perguntaSelecionada: perguntaSelecionada,
                quandoResponder: responder,
              )
            : Resultado(pontuacaoTotal, reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  // o componente StatelessWidget nao permite mudanças de valor, podendo ser convertida para Stateful, mas sera convertido manualmente para aprendizado
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
