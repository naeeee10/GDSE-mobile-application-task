import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'appbar.dart';
import 'blank_page.dart';
import 'date_controller.dart';
import 'text_field.dart';
import 'elevated_button.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final DateController dateController = Get.put(DateController());
    final TextEditingController yearController = TextEditingController();
    final TextEditingController dayOfYearController = TextEditingController();

    return CustomBlankPage(
      widgets: [
        CustomAppBar(
          showBackArrow: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.history,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomTextField(
                    inputPrefixIcon: Icons.calendar_month,
                    inputFieldName: "Enter Day of Year",
                    textFieldBorderRadius: 16,
                    controller: dayOfYearController,
                  ),
                ),
                Expanded(
                  child: CustomTextField(
                    inputPrefixIcon: Icons.calendar_month,
                    inputFieldName: "Enter Year",
                    textFieldBorderRadius: 16,
                    controller: yearController,
                  ),
                ),
              ],
            ),
            CustomElevatedButton(
              buttonColor: Colors.white,
              buttonText: "Search",
              buttonTextColor: const TextStyle(
                color: Color.fromARGB(255, 27, 28, 27),
                fontSize: 18,
              ),
              buttonBorderColor: Colors.white,
              onPressed: () {
                dateController.year.value =
                    int.tryParse(yearController.text) ?? 0;
                dateController.dayOfYear.value =
                    int.tryParse(dayOfYearController.text) ?? 0;
                dateController.calculateDate();
              },
            ),
            Obx(() => Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    dateController.result.value,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
