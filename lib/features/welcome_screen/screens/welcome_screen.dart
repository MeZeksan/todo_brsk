
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/widgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void _nextToAuthorization() async{
    context.go('/autorization_page');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/cafe.png"),
                  Text("Welcome to",
                    style: Theme.of(context).textTheme.headlineSmall),
                  Text("OUR REMINDER",
                    style: Theme.of(context).textTheme.headlineLarge),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 12, 30, 0),
                    child: DescriptionText(),
                  ),
                  ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: GetStartButton(text: 'Get start',
                onPressed: _nextToAuthorization,
                ),
            ),
            const SizedBox(height:32),
          ],
        ),
      ),
    );
  }
}

