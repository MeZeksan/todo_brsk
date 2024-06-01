import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_brsk/features/registration_screen/widgets/widgets.dart';
import 'package:todo_brsk/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'dart:developer' as developer;

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  final FirebaseAuthService _auth = FirebaseAuthService();

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
  void _signUp() async{
    String username = _userNameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confrimPasswordController.text;

    if(username.isEmpty || email.isEmpty ||
        password.isEmpty ||confirmPassword.isEmpty ){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all the input fields')),
      );
    }
    if(password == confirmPassword){
      User? user = await _auth.signUpWithEmailAndPassword(email, password);
      if(user != null){
        developer.log("User is successfully created");
        context.go('/dashboard_page');
      }
      else{
        developer.log("Error");
      }
    }
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
                 controller: _passwordController,
                   obscureText: true,),
                const SizedBox(height:16),
                 RoundTextField(hint: 'Confirm password',
                 controller: _confrimPasswordController,
                   obscureText: true,),
                const SizedBox(height:32),
                 GetStartButton(text: 'Register',
                     onPressed: _signUp),
                const SizedBox(height:16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',),
                    ButtonText(text: 'Sing in',onTap: () => context.go('/autorization_page'),),
                  ],)
              ],
            ),
          ),
        ),
      )
    );
  }
}

