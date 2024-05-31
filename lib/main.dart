import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'homepage.dart';
import 'quiz.dart';
import 'resultado.dart';

void main() {
  //runApp(Resultado(acertos: 3));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'Quiz':(context) => Quiz(),
        Resultado.routeName:(context) => Resultado(),
      },
    );
  }
}