import 'package:flutter/material.dart';
import 'package:todo_brsk/features/registration_screen/widgets/widgets.dart';
import 'package:todo_brsk/features/autorization_screen/screens/view.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  //контроллеры текста в TextField
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confrimPasswordController = TextEditingController();

  //очищение памяти от контроллеров
  @override
  void dispose() {
   _userNameController.dispose();
   _emailController.dispose();
    _passwordController.dispose();
    _confrimPasswordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( //добавляет прокрутку экрану
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 48, 32, 0),
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
                 RoundTextField(hint: 'Enter your full name',
                  controller:_userNameController),
                const SizedBox(height:16),
                 RoundTextField(hint: 'Enter your email',
                 controller: _emailController,),
                const SizedBox(height:16),
                 RoundTextField(hint: 'Enter your password',
                 controller: _passwordController,),
                const SizedBox(height:16),
                 RoundTextField(hint: 'Confirm password',
                 controller: _confrimPasswordController,),
                const SizedBox(height:32),
                const GetStartButton(text: 'Register',route: 'TODO'),  // ЗАГЛУШКА
                const SizedBox(height:16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',),
                    ButtonText(text: 'Sing in',route: '/autorization_page'),
                  ],)
              ],
            ),
          ),
        ),
      )
    );
  }
}

