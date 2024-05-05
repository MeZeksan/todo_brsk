import 'package:flutter/material.dart';
import 'package:todo_brsk/features/welcome_screen/welcome.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(255, 208, 143, 1.0),
      ),
      home: WelcomeScreen(),
    );
  }
}
