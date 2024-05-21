import 'package:flutter/material.dart';
import 'package:todo_brsk/features/autorization_screen/widgets/widgets.dart';
import 'package:todo_brsk/features/registration_screen/screens/view.dart';
class AutorizationScreen extends StatelessWidget {
  const AutorizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32, 24, 32, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/cafe.png"),
              Text("Welcome back\nto",
                  style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,),
              Text("OUR REMINDER",
                  style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height:60),
              const RoundTextField(hint: 'Enter your email'),
              const SizedBox(height:20),
              const RoundTextField(hint: 'Enter password'),
              const SizedBox(height:60),
              const ButtonText(text: 'Forgot your password?',nextScreen: RegistrationScreen()),
              const SizedBox(height:60),
              GetStartButton(text: 'Sign in'),
              const SizedBox(height:20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  ButtonText(text: 'Sing up',nextScreen: RegistrationScreen(),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
