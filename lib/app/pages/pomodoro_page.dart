import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro/app/components/entrada_tempo.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Text('Pomodoro'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              EntradaTempo(valor: 25, titulo: 'Trabalho'),
              EntradaTempo(valor: 5, titulo: 'Descanso'),
            ],
          ),
        ],
      ),
    );
  }
}
