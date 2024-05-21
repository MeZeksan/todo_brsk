import 'package:flutter/material.dart';
import 'package:todo_brsk/features/registration_screen/screens/view.dart';
import 'package:todo_brsk/features/welcome_screen/screens/view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontSize: 16.0),
          headlineLarge: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),
          bodySmall: TextStyle(fontSize: 12),
          labelSmall: TextStyle( fontSize: 16, fontWeight: FontWeight.bold)
        ),
        scaffoldBackgroundColor: const Color(0xffffd08f),
        elevatedButtonTheme:
        ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
    ),
      ),
      ),

      home: const RegistrationScreen(),
    );
  }
}
