import 'package:flutter/material.dart';

class DetailsRow extends StatelessWidget {
  const DetailsRow(
      {required this.containerColor,
      required this.detaiText,
      required this.detailwidget,
      super.key});

  final Widget detailwidget;
  final String detaiText;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Container(
        width: 105,
        height: 45,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: containerColor),
        child: Center(
          child: detailwidget,
          //     child: Text(
          //   "10:3",
          //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          // )),
        ),
      ),
      Text(detaiText),
    ]);
  }
}
