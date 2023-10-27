import 'package:intl/intl.dart';


class DateUtilities {
  DateUtilities._();
  static String convertTimeToAmPm(String time) {
    // time must be in format like "14:15:00"
    // final format = DateFormat.jm().format(DateFormat("hh:mm:ss").parse(time));
    // return format;
    final inputFormat = DateFormat("HH:mm:ss"); // 24-hour time format
    final timeOfDay = inputFormat.parse(time);
    final outputFormat = DateFormat.jm(); // Format as AM/PM
    return outputFormat.format(timeOfDay);
  }

  static  String getFormattedDate(DateTime dateTime) {
    DateFormat dateFormat = DateFormat('d MMMM y, EEEE');
    return dateFormat.format(dateTime);
  }

}
