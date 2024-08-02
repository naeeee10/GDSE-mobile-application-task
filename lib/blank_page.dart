import 'package:flutter/material.dart';

class CustomBlankPage extends StatelessWidget {
  const CustomBlankPage({
    super.key,
    required this.widgets,
  });

  final List<Widget> widgets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 28, 27),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          child: ListView.builder(
            itemCount: 1,
            shrinkWrap: true,
            itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            ),
          ),
        ),
      ),
    );
  }
}
