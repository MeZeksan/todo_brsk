
import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Thank you for your interest in our company, and welcome to our company. "
        "Sometimes it's time, sometimes it's time to look at the asset. Ultimately, but now.",
      style: Theme.of(context).textTheme.bodySmall,
      textAlign: TextAlign.center,);
  }
}