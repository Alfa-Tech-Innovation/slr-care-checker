import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:slr_care_checker/src/features/home_view_model/home_view/home_view.dart';
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
      builder: (context, child) => ResponsiveWrapper.builder(child,
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      initialRoute: "/",
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
