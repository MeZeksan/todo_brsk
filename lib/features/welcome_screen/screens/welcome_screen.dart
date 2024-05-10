
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: GetStartButton(text: 'Get start'),
            ),
            const SizedBox(height:32),
          ],
        ),
      ),
    );
  }
}

