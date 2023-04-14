import 'package:flutter/material.dart';
import 'package:slr_care_checker/src/features/history_veiw_model/history_page_body.dart';
import 'package:slr_care_checker/src/structures/trip_data.dart';
import 'home_page_body.dart';

enum CurrentPage{home, history}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<TripData> _trips;
  late final List _screens;

  void setTrips(List<TripData> trips) {
    _trips = trips;
  }

  _HomeScreenState() : _trips = []{
    setTrips(
        [
          TripData(
              start: "Kurunegala",
              destination: "Colombo",
              time: 0800,
              progress: false
          ),
          TripData(
              start: "Colombo",
              destination: "Bambalapitiya",
              time: 1130,
              progress: true
          )
        ]
    );
    _screens = <Widget>[const HomePageBody(), HistoryPageBody(trips: _trips)];
  }

  int _currentindex = CurrentPage.home.index;  // Current page you are on.
  Color homeBtnColor = Colors.white;
  Color historyBtnColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens.elementAt(_currentindex),
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {
            //qr function here
          },
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
                // HOME BUTTON
                Expanded(
                  child: Center(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _currentindex = CurrentPage.home.index;
                            homeBtnColor = Colors.white;
                            if (_currentindex == 0) {
                              historyBtnColor = Colors.blue;
                            }
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                              color: homeBtnColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Icon(Icons.home, size: 38),
                        ),
                      ),
                  ),
                ),

                // HISTORY BUTTON
                Expanded(
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _currentindex = CurrentPage.history.index;
                          historyBtnColor = Colors.white;
                          homeBtnColor = Colors.blue;
                        });
                      },
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: historyBtnColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.history,
                          size: 38,
                        ),
                      ),
                    )
                  )
                ),
                // const SizedBox(width: 10)
              ]),
        ),
        backgroundColor: const Color(0xffE1F8FF),
      ),
    );
  }
}
