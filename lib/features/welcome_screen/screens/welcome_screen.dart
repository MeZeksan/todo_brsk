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
                  const Text("Welcome to",
                    style: TextStyle(fontSize: 16),),
                  const Text("OUR REMINDER",
                    style: TextStyle(fontSize: 24,
                        fontWeight: FontWeight.bold),),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 12, 30, 0),
                    child: DescriptionText(),
                  ),
                  ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
              child: GetStartButton(),
            ),
            const SizedBox(height:32),
          ],
        ),
      ),
    );
  }
}

