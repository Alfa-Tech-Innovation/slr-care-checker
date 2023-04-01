import 'package:flutter/material.dart';

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
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/train.png"),
                    ),
                    Text("SLR Care"),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/user.png"),
                      backgroundColor: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                //add event here
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10),
              ),
              child: Image.asset(
                "assets/qr-code.png",
                width: 60,
              ),
            ),
          ),
        ]),
        bottomNavigationBar: BottomAppBar(
          height: 50,
          color: Colors.blue,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Expanded(
                child: Material(
              borderRadius: BorderRadius.circular(20),
              child: const Icon(Icons.home_outlined),
            )),

            const Expanded(
                child: SizedBox()), // this will handle the fab spacing

            Expanded(
                child: Material(
                    borderRadius: BorderRadius.circular(20),
                    child: const Icon(Icons.history))),
          ]),
        ),
      ),
    );
  }
}
