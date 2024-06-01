
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoundTextField extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool? obscureText;
  const RoundTextField({
    super.key,
    required this.hint, required this.controller, this.obscureText
  });

  bool isObscureText(){
    if(obscureText == null){
      return false;
    }
    else{
      return true;
    }
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51,
      child: TextField(
        inputFormatters: [ //на время отключил возможность ставить пробелы
          FilteringTextInputFormatter.deny(RegExp(r'\s'))
        ],
        obscureText: isObscureText(),
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

