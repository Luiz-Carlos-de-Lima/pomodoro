import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro/app/components/cronometro.dart';
import 'package:pomodoro/app/components/entrada_tempo.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Cronometro()),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                EntradaTempo(valor: 25, titulo: 'Trabalho'),
                EntradaTempo(valor: 5, titulo: 'Descanso'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
