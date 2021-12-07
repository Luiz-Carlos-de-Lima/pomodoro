import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;

  const CronometroBotao({Key? key, required this.texto, required this.icone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(icone,size: 33,),
            ),
            Text(texto),
          ],
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 20,
          ),
          textStyle: const TextStyle(
            fontSize: 22
          ),
        ),
      ),
    );
  }
}
