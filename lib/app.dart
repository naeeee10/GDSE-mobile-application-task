import 'package:day_date_month/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DayDateMonth extends StatelessWidget {
  const DayDateMonth({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
