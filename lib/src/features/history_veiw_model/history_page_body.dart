import 'package:flutter/material.dart';
import 'package:slr_care_checker/src/components/custom_app_bar.dart';
import 'package:slr_care_checker/src/structures/trip_data.dart';

class HistoryPageBody extends StatefulWidget {
  List<TripData> trips;
  HistoryPageBody({super.key, required this.trips});

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
        SizedBox(
          height: 100,
          child: Row(
              children: [
                Container(
                    width: 125,
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xFF5FFFA3)
                    ),
                    child: Center(
                      child: ListTile(
                        leading: const Icon(Icons.people, color: Colors.black,),
                        title: Text(
                          widget.trips.length.toString(),
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color:
                              Colors.black
                          ),
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    )
                ),
                const Expanded(
                  child: Text(
                    "Marked Onboard Passengers",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ]
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: widget.trips.length,
            itemBuilder: (BuildContext context, int index){
              return GestureDetector(
                child: Card(
                  color: const Color(0xffA1E8FF),
                  margin: const EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.all(10),
                          child: Text(
                            "${widget.trips[index].start} - ${widget.trips[index].destination}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            // textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            widget.trips[index].getFormattedTime(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            // textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: double.infinity,
                        // height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue
                        ),
                        child: ListTile(
                          title: Text(
                            widget.trips[index].getProgress(),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14
                            ),
                          ),
                          trailing: widget.trips[index].getIcon()
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
