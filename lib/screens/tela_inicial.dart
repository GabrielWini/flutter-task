import 'package:flutter/material.dart';

import '../components/tasks.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  bool opacidade = true;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tarefas'),
          leading: Icon(Icons.add_task),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1.0 : 0.0,
          duration: Duration(seconds: 1),
          child: ListView(
            children: [
              Task('Aprender Flutter no intervalo', 'assets/images/flutter.png', 1),
              Task('Andar De Bike', 'assets/images/bike.webp', 2),
              Task('Ler', 'assets/images/ler.jpg,', 3),
              Task('Meditar', 'assets/images/meditar.jpg', 4),
              Task('Jogar', 'assets/images/jogar.jpg', 5),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: Icon(Icons.remove_red_eye),
        ));
  }
}
