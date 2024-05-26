
import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  const RoundTextField({
    super.key,
    required this.hint, required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontSize: 13
          ),
          hintText: hint,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius:  BorderRadius.circular(25.0),
            borderSide: BorderSide.none
          )
        ),
      ),
    );
  }
}
