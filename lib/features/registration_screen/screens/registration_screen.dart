import 'package:flutter/material.dart';
import 'package:todo_brsk/features/registration_screen/widgets/widgets.dart';
import 'package:todo_brsk/features/autorization_screen/screens/view.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
              Text('Get’s things done\nwith TODO',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height:12),
              Text('Let’s help you meet up your tasks',
              style: Theme.of(context).textTheme.headlineSmall,),
              const SizedBox(height:16),
              const RoundTextField(hint: 'Enter your full name'),
              const SizedBox(height:16),
              const RoundTextField(hint: 'Enter your email'),
              const SizedBox(height:16),
              const RoundTextField(hint: 'Enter your password'),
              const SizedBox(height:16),
              const RoundTextField(hint: 'Confirm password'),
              const SizedBox(height:32),
              const GetStartButton(text: 'Register'),
              const SizedBox(height:16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',),
                  ButtonText(text: 'Sing in',nextScreen: AutorizationScreen(),),
                ],)
            ],
          ),
        ),
      )
    );
  }
}

