import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primaryColor: Colors.blue, brightness: Brightness.dark), 
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(child: Text('Quiz Curso de Flutter & Dart')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/logo.jpg'),
              ElevatedButton(
                onPressed: () {
                  print('Pressionado');
                },
                child: Text(
                  'Jogar',
                  style: TextStyle(fontSize: 50, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                    backgroundColor: Colors.blue,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
