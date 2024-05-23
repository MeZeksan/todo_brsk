
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GetStartButton extends StatelessWidget {
  final String text;
  final String route;
  const GetStartButton({
    super.key,
    required this.text, required this.route,
  });

  @override
  Widget build(BuildContext context) {
    //чтобы задать ширину кнопку используем Row и Expanded
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 56.0,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
                gradient: LinearGradient(
                    colors: [ Color(0xffF4C27F),Color(0xffD8605B)])),
            child: ElevatedButton(
              onPressed: () {context.go(route);},
              child:
              Text(text,
                style: const TextStyle(
                  fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),),
            ),
          ),
        ),
      ],
    );
  }
}
