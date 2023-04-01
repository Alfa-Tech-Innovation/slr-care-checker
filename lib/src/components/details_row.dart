import 'package:flutter/material.dart';

class DetailsRow extends StatefulWidget {
  const DetailsRow({super.key});

  @override
  State<DetailsRow> createState() => _DetailsRowState();
}

class _DetailsRowState extends State<DetailsRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 105,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.blue),
          child: const Center(
              child: Text(
            "10:3",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )),
        ),
        const Text("data"),
      ],
    );
  }
}
