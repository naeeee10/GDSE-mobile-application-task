import 'package:get/get.dart';
import 'calculator.dart';

class DateController extends GetxController {
  var year = 0.obs;
  var dayOfYear = 0.obs;
  var result = ''.obs;

  void calculateDate() {
    if (year.value > 0 && dayOfYear.value > 0) {
      try {
        final dateCalculator =
            DateCalculator(dayOfYear: dayOfYear.value, year: year.value);
        result.value = 'Date: ${dateCalculator.getFormattedDate()}\n'
            'Week of the Year: ${dateCalculator.getWeekOfYear()}\n'
            'Is it a leap year? ${dateCalculator.isLeapYear()}';
      } catch (e) {
        result.value = 'Error: ${e.toString()}';
      }
    } else {
      result.value = 'Please enter valid year and day of the year';
    }
  }
}
