import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.buttontext,
    super.key,
    this.buttoncolor = Colors.white,
  });

  final String buttontext;
  final Color buttoncolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 150,
      height: 75,
      decoration: BoxDecoration(
        color: buttoncolor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          buttontext,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
