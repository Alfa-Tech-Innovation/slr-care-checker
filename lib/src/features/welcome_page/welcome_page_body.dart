import 'package:flutter/material.dart';
import 'package:slr_care_checker/src/components/custom_app_bar.dart';
import 'package:slr_care_checker/src/components/details_row.dart';
import 'package:slr_care_checker/src/features/home_view_model/home_view/home_view.dart';
import 'package:slr_care_checker/src/structures/trip_data.dart';

class WelcomePageBody extends StatefulWidget {
  final List<TripData> trips;
  const WelcomePageBody({super.key, required this.trips});

  @override
  State<WelcomePageBody> createState() => _WelcomePageBodyState();
}

class _WelcomePageBodyState extends State<WelcomePageBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE1F8FF),
        body: Column(children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: CustomAppBar(appbartext: "Welcome"),
          ),
          const SizedBox(height: 10),
          DetailsRow(
              containerColor: Colors.transparent,
              detaiText: "Select a trip and get started",
              detailwidget: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.lightBlue.shade200),
                  child: const Center(
                    child: Text(
                      "Ready",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ))),
          const SizedBox(
            height: 25,
          ),
          Card(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              color: Colors.lightBlue.shade100,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      "Select Trip",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      itemCount: widget.trips.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen(
                                          trips: widget.trips,
                                          selectedIndex: index,
                                        )));
                          },
                          child: Card(
                              margin: const EdgeInsets.all(15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              child: Column(
                                children: [
                                  SizedBox(
                                      width: 150,
                                      height: 85,
                                      child: Column(
                                        children: [
                                          StartEndTile(
                                              icon: Icons.train,
                                              title: widget.trips[index].start),
                                          StartEndTile(
                                              icon: Icons.location_on,
                                              title: widget
                                                  .trips[index].destination)
                                        ],
                                      )),
                                  Expanded(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.lightBlue,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(15),
                                              bottomRight:
                                                  Radius.circular(15))),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(top: 15),
                                            child: Text(
                                              widget.trips[index].trainName,
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 150,
                                            // height: 100,
                                            child: ListTile(
                                              leading: const Icon(
                                                Icons.watch_later_outlined,
                                                color: Colors.white,
                                              ),
                                              title: Text(
                                                widget.trips[index]
                                                    .getFormattedTime(),
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        );
                      },
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 25,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
                "Ticket data will periodically be synced by connecting to the internet to make sure every ticket purchase is up to date"),
          )
        ]),
      ),
    );
  }
}

class StartEndTile extends StatelessWidget {
  final IconData icon;
  final String title;
  const StartEndTile({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.black,
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        contentPadding: const EdgeInsets.all(5),
      ),
    );
  }
}
