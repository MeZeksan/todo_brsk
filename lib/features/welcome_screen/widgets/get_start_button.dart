
import 'package:flutter/material.dart';

class GetStartButton extends StatelessWidget {
  const GetStartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.0,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
          gradient: LinearGradient(
              colors: [ Color.fromRGBO(244, 194, 127, 1),Color.fromRGBO(216, 96, 91,1.0)])),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child:
        const Text('Get Start',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
      ),
    );
  }
}
