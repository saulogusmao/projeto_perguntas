import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;
  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 4) {
      return 'Legal, você é o Gonzaga!';
    } else if (pontuacao == 5) {
      return 'Legal, você é a Adélia';
    } else if (pontuacao == 6) {
      return 'Legal, você é a Aline';
    } else if (pontuacao == 10) {
      return "Legal. vocé é o Laércio";
    } else {
      return 'Você está confuso!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 28),
        )),
        TextButton(
          child: Text('Reiniciar?'),
          style: TextButton.styleFrom(primary: Colors.blue),
          onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
  }
}
