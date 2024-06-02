import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_brsk/features/registration_screen/widgets/widgets.dart';
import 'package:todo_brsk/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'dart:developer' as developer;

final _formKey = GlobalKey<FormState>();

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
  final TextEditingController _confirmPasswordController = TextEditingController();

  //очищение памяти от контроллеров
  @override
  void dispose() {
   _userNameController.dispose();
   _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
  void _signUp() async{
    String username = _userNameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    _formKey.currentState!.validate(); //валидация

    if(username.isEmpty || email.isEmpty ||
        password.isEmpty ||confirmPassword.isEmpty ){
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all the input fields'),
        backgroundColor: Color(0xff6c417f)),
      );
    }
    if(password != confirmPassword){
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('The passwords you entered do not match'),
            backgroundColor: Colors.red,));
    }
    else if(username.isNotEmpty){
      User? user = await _auth.signUpWithEmailAndPassword(email, password);
      if(user != null){
        developer.log("User is successfully created");
        context.go('/dashboard_page');
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Something went wrong, maybe the user you entered already exists'),
                backgroundColor: Colors.red,));
        developer.log("Error");
      }
    }
  }
  String? validateEmail(String? email){ //проверка почты
    final bool emailValid =
    RegExp(r'\S+@\S+\.\S+')
        .hasMatch(email ?? '');
    if(!emailValid){
      return 'Please enter a valid email';
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( //добавляет прокрутку экрану
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 48, 32, 0),
          child: Center(
            child: Form( //обязателен, чтобы отслеживать и проводить валидацию
              key: _formKey,
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
                    controller:_userNameController,
                   validator: (name) =>
                   name!.isEmpty
                       ? 'The name should not be empty'
                       : null,
                   icon: const Icon(Icons.face),),
                  const SizedBox(height:16),
                   RoundTextField(hint: 'Enter your email',
                   controller: _emailController,
                   validator: validateEmail,
                     icon: const Icon(Icons.business_center),),
                  const SizedBox(height:16),
                   RoundTextField(hint: 'Enter your password',
                   controller: _passwordController,
                     obscureText: true,
                   validator: (password) =>
                   password!.length < 8
                     ?'Password should be at least 8 characters'
                     :null,
                     icon: const Icon(Icons.fingerprint),),
                  const SizedBox(height:16),
                   RoundTextField(hint: 'Confirm password',
                   controller: _confirmPasswordController,
                     obscureText: true,
                     validator: (password) =>
                     password!.length < 8
                         ?'Password should be at least 8 characters'
                         :null,
                     icon: const Icon(Icons.fingerprint),),
                  const SizedBox(height:32),
                   GraidentElevatedButton(text: 'Register',
                       onPressed: _signUp),
                  const SizedBox(height:16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?',),
                      ButtonText(text: 'Sing in',onTap: () => context.go('/autorization_page'),),
                    ],),
                  const SizedBox(height:16),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}

