import 'package:flutter/material.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              'Quiz de Flutter',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Pergunta 1 de 10',
                    style: TextStyle(fontSize: 20),
                  )),
              Text(
                'Pergunta',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () {
                  print('object 1');
                },
                child: Text(
                  'Resposta 1',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  backgroundColor: Colors.blue,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('object 2');
                },
                child: Text(
                  'Resposta 2',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  backgroundColor: Colors.blue,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('object 3');
                },
                child: Text(
                  'Resposta 3',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  backgroundColor: Colors.blue,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('object 4');
                },
                child: Text(
                  'Resposta 4',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  backgroundColor: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
