import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'device/device_utility.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? appBarTitle;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final Widget? leadingWidget;
  final List<Widget> actions;
  final VoidCallbackAction? leadingOnPressed;
  final double? appBarPadding;

  const CustomAppBar({
    super.key,
    this.appBarTitle,
    required this.showBackArrow,
    this.leadingIcon,
    required this.actions,
    this.leadingOnPressed,
    this.leadingWidget,
    this.appBarPadding,
  });

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtility.getAppBarHeight());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(appBarPadding ?? 8.0),
      child: AppBar(
        backgroundColor: const Color.fromARGB(255, 27, 28, 27),
        automaticallyImplyLeading: false,
        title: appBarTitle,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(
                  Icons.arrow_back,
                  //IssacsIcons.backArrow,
                ),
              )
            : leadingWidget,
        actions: actions,
      ),
    );
  }
}
