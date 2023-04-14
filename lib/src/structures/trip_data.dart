class TripData{
  String start;
  String destination;
  int time;
  bool progress;

  TripData({required this.start, required this.destination, required this.time, required this.progress});

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
}