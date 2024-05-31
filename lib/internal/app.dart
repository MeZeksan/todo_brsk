import 'package:flutter/material.dart';
import 'package:todo_brsk/routes.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'ToDo App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headlineSmall: TextStyle(fontSize: 16.0),
          headlineLarge: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold),
          bodySmall: TextStyle(fontSize: 12),
          labelSmall: TextStyle( fontSize: 16, fontWeight: FontWeight.bold),
          displaySmall: TextStyle(fontSize: 12,color: Color(0xffD8605B))
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
    );
  }
}
