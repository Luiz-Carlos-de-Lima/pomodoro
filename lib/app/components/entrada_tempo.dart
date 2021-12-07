import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final int valor;
  final String titulo;

  const EntradaTempo({
    Key? key,
    required this.valor,
    required this.titulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Text(
        titulo,
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Icon(
              Icons.arrow_downward,
              color: Colors.white,
            ),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(15),
              primary: Colors.red,
            ),
          ),
          Text(
            "$valor min",
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Icon(
              Icons.arrow_upward,
              color: Colors.white,
            ),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(15),
              primary: Colors.red,
            ),
          ),
        ],
      ),
    ]);
  }
}
