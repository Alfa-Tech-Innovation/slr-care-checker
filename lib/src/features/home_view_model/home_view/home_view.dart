import 'package:flutter/material.dart';
import 'package:slr_care_checker/src/features/history_veiw_model/history_page_body.dart';
import 'home_page_body.dart';

enum CurrentPage {
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int _currentindex = 0;  // Current page you are on.
  // Color focuscolor1 = Colors.blue;
  // Color focuscolor2 = Colors.white;
  CurrentPage currentPage = CurrentPage.home;
  final List _screens = <Widget>[const HomePageBody(), const HistoryPageBody()];

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
                const SizedBox(width: 10,),
                // Expanded(
                //     child: Material(
                //   borderRadius: BorderRadius.circular(20),
                //   child: const Icon(Icons.home_outlined, size: 38),
                // )
                // ),

                // HOME BUTTON
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentindex = 0;
                      focuscolor1 = Colors.white;
                      if (_currentindex == 0) {
                        focuscolor2 = Colors.blue;
                      }
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: focuscolor1,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(Icons.home, size: 38),
                  ),
                ),
                // const Expanded(
                //     child: SizedBox()), // this will handle the fab spacing

                // Expanded(
                //     child: Material(
                //         borderRadius: BorderRadius.circular(20),
                //         child: const Icon(
                //           Icons.history,
                //           size: 38,
                //         ))),

                // HISTORY BUTTON
                InkWell(
                  onTap: () {
                    setState(() {
                      _currentindex = 1;
                      focuscolor2 = Colors.white;
                      if (_currentindex == 1) {
                        focuscolor1 = Colors.blue;
                      }
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: focuscolor2,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      Icons.history,
                      size: 38,
                    ),
                  ),
                ),
                const SizedBox(width: 10)
              ]),
        ),
        backgroundColor: const Color(0xffE1F8FF),
      ),
    );
  }
}
