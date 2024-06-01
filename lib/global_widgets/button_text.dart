
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ButtonText extends StatelessWidget {
  final String text;
  final String route;
  const ButtonText({
    super.key, required this.text, required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {context.go(route);},
      child: GradientText(
        text,
        style: Theme.of(context).textTheme.labelSmall,
        colors: const [Color(0xff8DDD9A), Color(0xff4C79BF)],
      ),
    );
  }
}
