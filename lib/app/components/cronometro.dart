import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/app/components/cronometro_botao.dart';
import 'package:pomodoro/app/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
      builder: (_) => Container(
        color: store.estaTrabalhando() ? Colors.red : Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              store.estaTrabalhando() ? 'Hora de Trabalhar' : 'Hora de Descansar',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Observer(
              builder: (_) => Text(
                "${store.minutos.toString().padLeft(2, '0')}:${store.segundos.toString().padLeft(2, '0')}",
                style: const TextStyle(fontSize: 120, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              if (!store.iniciado)
                CronometroBotao(
                    texto: 'Iniciar',
                    icone: Icons.play_arrow,
                    click: store.iniciar),
              if (store.iniciado)
                CronometroBotao(
                  texto: 'Parar',
                  icone: Icons.stop,
                  click: store.parar,
                ),
              CronometroBotao(
                texto: 'Reiniciar',
                icone: Icons.refresh,
                click: store.reiniciar,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
