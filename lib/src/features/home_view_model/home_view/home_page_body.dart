import 'package:flutter/material.dart';
import 'package:slr_care_checker/src/components/custom_app_bar.dart';
import 'package:slr_care_checker/src/components/custom_button.dart';
import 'package:slr_care_checker/src/components/details_row.dart';
import 'package:slr_care_checker/src/structures/trip_data.dart';

class HomePageBody extends StatelessWidget {
  final TripData trip;
  const HomePageBody({
    super.key,
    required this.trip
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
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
          DetailsRow(
              containerColor: Colors.transparent,
              detaiText: "Data last synced at 10.36 ",
              detailwidget: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blue
                  ),
                  child: const Center(
                    child: Text(
                      "10:36",
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  )
              )
          ),
          const SizedBox(height: 10),

          Container(
            width: size.width,
            // height: 388,
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: const Color(0xffA1E8FF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 5)
                ]),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                Row(
                  children: const [
                    Icon(Icons.location_on),
                    SizedBox(width: 20),
                    Text(
                      "Last Station",
                      style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
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
                  ),
                ),
                const SizedBox(height: 20),
                Stack(alignment: Alignment.center, children: [
                  Container(
                    width: 500,
                    height: 60,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: LinearProgressIndicator(
                      semanticsLabel: "Deshan Sithumika",
                      backgroundColor: Colors.blue[200],
                      minHeight: 40,
                      value: 0.7,
                    ),
                  ),
                  const Text(
                    "80% of the trip completed",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ]),
                const SizedBox(height: 10,)
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            width: 388,
            height: 76,
            decoration: BoxDecoration(
              color: const Color(0xff3096B4),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 100,
                  child: Material(
                    borderRadius: BorderRadius.circular(50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.people_alt_sharp),
                        Text(
                          "07",
                          style: TextStyle(
                              fontSize: 48, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text(
                    "Passengers at Kaluthara",
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 60)
        ],
      ),
    );
  }
}
