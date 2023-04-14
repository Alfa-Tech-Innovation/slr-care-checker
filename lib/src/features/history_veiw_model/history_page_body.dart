import 'package:flutter/material.dart';
import 'package:slr_care_checker/src/components/custom_app_bar.dart';
import 'package:slr_care_checker/src/components/details_row.dart';

class HistoryPageBody extends StatefulWidget {
  const HistoryPageBody({super.key});

  @override
  State<HistoryPageBody> createState() => _HistoryPageBodyState();
}

class _HistoryPageBodyState extends State<HistoryPageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(10),
          child: CustomAppBar(appbartext: "History"),
        ),
        const SizedBox(height: 10),
        DetailsRow(
            containerColor: const Color(0xff4CC601),
            detaiText: "Marked onboard passengers",
            detailwidget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [Icon(Icons.people_alt), Text("34")],
            )),
      ],
    );
  }
}
