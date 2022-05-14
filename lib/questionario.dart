import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  });
  bool get temPerguntaSelecionada {
    //se tem pergunta selecionada
    return perguntaSelecionada <
        perguntas.length; //se tiver, deve ser menor que o tamanho da lista
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? // '?' e ':' indicando que se tem pergunta selecionada, deve voltar a funcao perguntas ou se nao ':" null/[]"
        perguntas[perguntaSelecionada].cast()['respostas']
        : [];
    return Column(children: <Widget>[
      Questao(perguntas[perguntaSelecionada]['texto'].toString()),
      ...respostas.map((resp) {
        return Resposta(
          resp['texto'].toString(),
          () => quandoResponder(int.parse(resp['pontuacao'].toString())),
        );
      }).toList(),
    ]);
  }
}
