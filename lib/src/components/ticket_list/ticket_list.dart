import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ticket_list extends StatelessWidget {
  const ticket_list({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 250,
        child: Container(
          color: Colors.blue.shade200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 200,
                  color: Colors.purple[600],
                  child: const Center(
                      child: Text(
                    'Badulla',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 200,
                  color: Color.fromARGB(255, 195, 144, 210),
                  child: const Center(
                      child: Text(
                    'Kurunegala',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 200,
                  color: Color.fromARGB(255, 165, 144, 170),
                  child: const Center(
                      child: Text(
                    'Fort',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
