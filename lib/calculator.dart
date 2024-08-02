import 'package:intl/intl.dart';

class DateCalculator {
  final int dayOfYear;
  final int year;

  DateCalculator({required this.dayOfYear, required this.year}) {
    if (dayOfYear <= 0 || dayOfYear > (isLeapYear() ? 366 : 365)) {
      throw ArgumentError('Invalid day of the year');
    }
  }

  String getFormattedDate() {
    DateTime date = DateTime(year).add(Duration(days: dayOfYear - 1));
    return DateFormat('dd/MM/yyyy').format(date);
  }

  int getWeekOfYear() {
    DateTime date = DateTime(year).add(Duration(days: dayOfYear - 1));
    int dayOfYearCalculated = int.parse(DateFormat('D').format(date));
    return ((dayOfYearCalculated - date.weekday + 10) / 7).floor();
  }

  bool isLeapYear() {
    if (year % 4 == 0) {
      if (year % 100 == 0) {
        if (year % 400 == 0) {
          return true;
        } else {
          return false;
        }
      } else {
        return true;
      }
    } else {
      return false;
    }
  }
}
