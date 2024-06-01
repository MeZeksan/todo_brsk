import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_brsk/features/autorization_screen/widgets/widgets.dart';
import 'package:todo_brsk/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'dart:developer' as developer;

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});
  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {

  final FirebaseAuthService _auth = FirebaseAuthService();

  //контроллеры текста в TextField
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  void _signIn() async{
    String email = _emailController.text;
    String password = _passwordController.text;
    if(email.isEmpty || password.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all the input fields')),
      );
    }
    User? user = await _auth.signInWithEmailAndPassword(email, password);
      if(user != null){
        developer.log("User is successfully created");
        context.go('/dashboard_page');
      }
      else{
        developer.log("Error");
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 48, 32, 0),
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
                 RoundTextField(hint: 'Enter your email',
                controller: _emailController,),
                const SizedBox(height:20),
                 RoundTextField(hint: 'Enter password',
                 controller: _passwordController, obscureText: true,
                 ),

                const SizedBox(height:60),
                ButtonText(text: 'Forgot your password?',onTap: () => context.go('/registration_page'),),
                const SizedBox(height:60),
                 GetStartButton(text: 'Sign in',onPressed: _signIn),
                const SizedBox(height:20),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    ButtonText(text: 'Sing up',onTap: () => context.go('/registration_page'),)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
