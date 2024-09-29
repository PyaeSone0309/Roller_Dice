import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {

  const GradientContainer(this.text,{super.key, required this.text2});
  
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
      )
    );
  }
}