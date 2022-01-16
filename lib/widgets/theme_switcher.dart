import 'package:flutter/material.dart';
import 'package:flutter_profile_ui/config/constants.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Theme.of(context).primaryColor,
      onPressed: () {
        Get.changeTheme(Get.isDarkMode ? lightTheme : darkTheme);
      },
      child: const Icon(
        LineIcons.adjust,
        color: Colors.white,
      ),
    );
  }
}
