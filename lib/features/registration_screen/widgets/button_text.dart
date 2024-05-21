
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:todo_brsk/features/welcome_screen/screens/view.dart';

class ButtonText extends StatelessWidget {
  final String text;
  const ButtonText({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WelcomeScreen()),
        );
      },
      child: GradientText(
        text,
        style: Theme.of(context).textTheme.labelSmall,
        colors: const [Color(0xffD8605B), Color(0xffF4C27F)],
      ),
    );
  }
}
