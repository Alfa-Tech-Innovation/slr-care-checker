import 'package:flutter/material.dart';
import 'package:slr_care_checker/src/components/custom_app_bar.dart';
import 'package:slr_care_checker/src/components/custom_button.dart';

import '../../../components/details_row.dart';

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
        body: Stack(children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                // used custom app bar which is in components
                child: CustomAppBar(
                  appbartext: "SLR Care",
                ),
              ),
              const SizedBox(height: 10),
              //use custom details row witch is in components
              const DetailsRow(),
              const SizedBox(height: 10),

              Container(
                width: 378,
                height: 388,
                decoration: BoxDecoration(
                    color: const Color(0xffA1E8FF),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 5)
                    ]),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.location_on),
                        SizedBox(width: 20),
                        Text(
                          "Last Station",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.arrow_left_rounded,
                            size: 70,
                          ),
                          Container(
                            height: 77,
                            width: 250,
                            decoration: BoxDecoration(
                                color: const Color(0xff3096B4),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Center(
                                child: Text(
                              "Beruwala",
                              style: TextStyle(
                                  fontSize: 36, fontWeight: FontWeight.w400),
                            )),
                          ),
                          const Icon(
                            Icons.arrow_right_rounded,
                            size: 70,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CustomButton(
                          buttontext: "End Trip",
                        ),
                        CustomButton(
                          buttontext: "Confirm",
                          buttoncolor: Color(0xff3096B4),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ]),
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
