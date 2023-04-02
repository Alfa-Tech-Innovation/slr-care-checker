import 'package:flutter/material.dart';
import 'package:slr_care_checker/src/components/custom_app_bar.dart';

import '../../../components/details_row.dart';
import '../../../components/ticket_list/ticket_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.all(10),
            child: CustomAppBar(
              appbartext: "SLR Care",
            ),
          ),
        ),
        body: ticket_list(),
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {},
          child: Image.asset(
            "assets/qr-code.png",
            width: 60,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          height: 50,
          color: Colors.blue,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Material(
                  borderRadius: BorderRadius.circular(20),
                  child: const Icon(Icons.home_outlined, size: 38),
                )),

                const Expanded(
                    child: SizedBox()), // this will handle the fab spacing

                Expanded(
                    child: Material(
                        borderRadius: BorderRadius.circular(20),
                        child: const Icon(
                          Icons.history,
                          size: 38,
                        ))),
              ]),
        ),
        backgroundColor: const Color(0xffE1F8FF),
      ),
    );
  }
}
