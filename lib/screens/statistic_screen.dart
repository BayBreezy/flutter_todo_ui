import 'package:flutter/material.dart';
import 'package:flutter_profile_ui/controllers/utility_controller.dart';
import 'package:flutter_profile_ui/widgets/custom_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class StatisticScreen extends StatelessWidget {
  StatisticScreen({Key? key}) : super(key: key);
  UtilityController utilityController =
      Get.put<UtilityController>(UtilityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
          child: Center(
        child: Icon(
          LineIcons.barChart,
          size: 50,
        ),
      )),
      bottomNavigationBar:
          CustomBottomBar(utilityController: utilityController),
    );
  }
}
