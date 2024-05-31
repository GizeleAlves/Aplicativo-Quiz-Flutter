import 'package:flutter/material.dart';

class Argumentos {
  int acertos = 0;
  Argumentos(this.acertos);
}

class Resultado extends StatelessWidget {
  static const routeName = 'Resultado';

  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)!.settings.arguments as Argumentos;
    return MaterialApp(
      // theme: ThemeData(primaryColor: Colors.blue, brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text('Quiz Curso de Flutter & Dart')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Resultado',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Você acertou\n   ${argumentos.acertos} de 10\n  perguntas!',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Pressionado');
                      Navigator.pushNamed(context, 'Quiz');
                    },
                    child: Text(
                      'Jogar Novamente',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
