import 'package:flutter/material.dart';
import 'package:pomodoro/app/components/cronometro_botao.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hora de Trabalhar',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            '25:00',
            style: TextStyle(fontSize: 120, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            const CronometroBotao(texto: 'Iniciar', icone: Icons.play_arrow),
            //const CronometroBotao(texto: 'Parar', icone: Icons.stop),
            const CronometroBotao(texto: 'Reiniciar', icone: Icons.refresh),
          ]),
        ],
      ),
    );
  }
}
