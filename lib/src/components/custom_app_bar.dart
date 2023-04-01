import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.appbartext, super.key});

  final String appbartext;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage("assets/train.png"),
        ),
        Text(
          appbartext,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
        ),
        const CircleAvatar(
          backgroundImage: AssetImage("assets/user.png"),
          backgroundColor: Colors.white,
        )
      ],
    );
  }
}
