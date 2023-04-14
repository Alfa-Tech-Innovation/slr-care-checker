import 'package:flutter/material.dart';

class TripData{
  String start;
  String destination;
  int time;
  bool progress;
  String trainName;

  TripData({required this.start, required this.destination, required this.time, required this.progress, this.trainName = "Train Name Unknown"});

  // converts the time of the trip from integer format and returns a string in the format "hh:mm<AM/PM>"
  String getFormattedTime() {
    String hour = (time ~/ 100).toString();
    String minute = (time % 100).toString().padLeft(2, '0');
    String amPm = int.parse(hour) < 12 ? 'AM' : 'PM';
    if (int.parse(hour) > 12) {
      hour = (int.parse(hour) - 12).toString();
    } else if (int.parse(hour) == 0) {
      hour = '12';
    }
    return '$hour:$minute$amPm';
  }

  String getProgress() {
    if (progress){
      return "In Progress";
    }
    else {
      return "Completed";
    }
  }

  Widget getIcon(){
    if (progress){
      return const CircleAvatar(
        backgroundColor: Color(0xffA1E8FF),
        foregroundColor: Colors.black54,
        child: Icon(Icons.train),
      );
    }
    else{
      return const CircleAvatar(
        backgroundColor: Color(0xFF5FFFA3),
        foregroundColor: Colors.black54,
        child: Icon(Icons.check),
      );
    }
  }
}