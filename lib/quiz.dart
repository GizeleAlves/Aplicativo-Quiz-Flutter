import 'package:flutter/material.dart';
import 'package:quiz/resultado.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;
  @override
  Widget build(BuildContext context) {
    List quiz = [
      {
        "pergunta": "Quem descobriu o Brasil?",
        "respostas": [
          "Dom Pedro I",
          "Pedro Álvares Cabral",
          "Tiradentes",
          "Dom Pedro II",
        ],
        "alternativa_correta": 2,
      }
    ];

    quiz.add({
      "pergunta": "O Flutter é...",
      "respostas": [
        "Uma linguagem",
        "Um aplicativo",
        "Um SDK",
        "Uma IDE",
      ],
      "alternativa_correta": 3,
    });

    quiz.add({
      "pergunta": "3",
      "respostas": [
        "Respposta 1",
        "Respposta 2",
        "Respposta 3",
        "Respposta 4",
      ],
      "alternativa_correta": 1,
    });

    quiz.add({
      "pergunta": "4",
      "respostas": [
        "Respposta 1",
        "Respposta 2",
        "Respposta 3",
        "Respposta 4",
      ],
      "alternativa_correta": 4,
    });

    quiz.add({
      "pergunta": "5",
      "respostas": [
        "Respposta 1",
        "Respposta 2",
        "Respposta 3",
        "Respposta 4",
      ],
      "alternativa_correta": 1,
    });

    quiz.add({
      "pergunta": "6",
      "respostas": [
        "Respposta 1",
        "Respposta 2",
        "Respposta 3",
        "Respposta 4",
      ],
      "alternativa_correta": 2,
    });

    quiz.add({
      "pergunta": "7",
      "respostas": [
        "Respposta 1",
        "Respposta 2",
        "Respposta 3",
        "Respposta 4",
      ],
      "alternativa_correta": 3,
    });

    quiz.add({
      "pergunta": "8",
      "respostas": [
        "Respposta 1",
        "Respposta 2",
        "Respposta 3",
        "Respposta 4",
      ],
      "alternativa_correta": 4,
    });

    quiz.add({
      "pergunta": "9",
      "respostas": [
        "Respposta 1",
        "Respposta 2",
        "Respposta 3",
        "Respposta 4",
      ],
      "alternativa_correta": 1,
    });

    quiz.add({
      "pergunta": "10",
      "respostas": [
        "Respposta 1",
        "Respposta 2",
        "Respposta 3",
        "Respposta 4",
      ],
      "alternativa_correta": 2,
    });

    print('Dados do quiz:');
    //print(quiz);
    

    void respondeu(int respostaNumero) {
      setState(() {
        if (quiz[perguntaNumero - 1]['alternativa_correta'] == respostaNumero) {
          print('acertou!');
          acertos++;
        } else {
          print('errou!');
          erros++;
        }

        print('Acertos totais: $acertos. Erros totais: $erros');

        if (perguntaNumero == 10) {
          print('Terminou o quiz!');
          Navigator.pushNamed(context, 'Resultado',
              arguments: Argumentos(acertos));
        } else {
          perguntaNumero++;
        }
      });
    }

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
                    'Pergunta $perguntaNumero de 10',
                    style: TextStyle(fontSize: 20),
                  )),
              Text(
                'Pergunta:\n\n' + quiz[perguntaNumero - 1]['pergunta'],
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('object 1');
                    respondeu(1);
                  },
                  child: Text(
                    quiz[perguntaNumero - 1]['respostas'][0],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    backgroundColor: Colors.blue,                      
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),

                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('object 2');
                    respondeu(2);
                  },
                  child: Text(
                    quiz[perguntaNumero - 1]['respostas'][1],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    backgroundColor: Colors.blue, 
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),

                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('object 3');
                    respondeu(3);
                  },
                  child: Text(
                    quiz[perguntaNumero - 1]['respostas'][2],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    backgroundColor: Colors.blue,                      
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),

                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('object 4');
                    respondeu(4);
                  },
                  child: Text(
                    quiz[perguntaNumero - 1]['respostas'][3],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    backgroundColor: Colors.blue,                     
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),

                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
