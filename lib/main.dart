import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro/app/pages/pomodoro_page.dart';
import 'package:pomodoro/app/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(create: (_) => PomodoroStore()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PomodoroPage(),
      ),
    );
  }
}