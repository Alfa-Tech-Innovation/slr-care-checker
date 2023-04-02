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
      width: 170,
      height: 80,
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
