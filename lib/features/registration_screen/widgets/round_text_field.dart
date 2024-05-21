
import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  final String hint;
  const RoundTextField({
    super.key,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51,
      child: TextField(
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
