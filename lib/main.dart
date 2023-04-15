import 'package:flutter/material.dart';
import 'package:slr_care_checker/src/features/welcome_page/welcome_page_body.dart';
import 'package:slr_care_checker/src/structures/trip_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<TripData> trips = [
    TripData(
      start: "Kurunegala",
      destination: "Colombo",
      time: 0800,
      progress: false,
    ),
    TripData(
      start: "Colombo",
      destination: "Bambalapitiya",
      time: 1130,
      progress: true,
    ),
    TripData(
      start: "Galle",
      destination: "Bambalapitiya",
      time: 1230,
      progress: true,
    )
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SLR Care - Checker",
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: WelcomePageBody(
        trips: trips,
      ),
    );
  }
}
