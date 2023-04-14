import 'package:flutter/material.dart';
import 'package:slr_care_checker/src/components/custom_app_bar.dart';
import 'package:slr_care_checker/src/components/details_row.dart';

class WelcomePageBody extends StatefulWidget {
  const WelcomePageBody({super.key});

  @override
  State<WelcomePageBody> createState() => _WelcomePageBodyState();
}

class _WelcomePageBodyState extends State<WelcomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        Padding(
          padding: EdgeInsets.all(10),
          child: CustomAppBar(appbartext: "Welcome"),
        ),
        SizedBox(height: 10),
        DetailsRow(
            containerColor: Color(0xff4CC601),
            detaiText: "Select a Trip And Get Started",
            detailwidget: Text(
              "Ready",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
      ]),
    );
  }
}
