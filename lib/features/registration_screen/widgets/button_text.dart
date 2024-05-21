
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:todo_brsk/features/registration_screen/screens/view.dart';

class ButtonText extends StatelessWidget {
  final String text;
  final Widget nextScreen;
  const ButtonText({
    super.key, required this.text, required this.nextScreen,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextScreen),
        );
      },
      child: GradientText(
        text,
        style: Theme.of(context).textTheme.labelSmall,
        colors: const [Color(0xff8DDD9A), Color(0xff4C79BF)],
      ),
    );
  }
}
