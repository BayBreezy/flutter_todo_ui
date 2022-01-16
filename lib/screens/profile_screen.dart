import 'package:flutter/material.dart';
import 'package:flutter_profile_ui/config/constants.dart';
import 'package:flutter_profile_ui/controllers/utility_controller.dart';
import 'package:flutter_profile_ui/widgets/custom_bottom_bar.dart';
import 'package:flutter_profile_ui/widgets/performance_chart.dart';
import 'package:flutter_profile_ui/widgets/period_selector.dart';
import 'package:flutter_profile_ui/widgets/profile_info.dart';
import 'package:flutter_profile_ui/widgets/theme_switcher.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);
  UtilityController utilityController =
      Get.put<UtilityController>(UtilityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const ThemeSwitcher(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: kPadding * 2),
              const ProfileInfo(),
              SizedBox(height: kPadding * 1.5),
              PeriodSelector(utilityController: utilityController),
              SizedBox(height: kPadding * 1.5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Performance rates".toUpperCase()),
                ],
              ),
              SizedBox(height: kPadding),
              Container(
                height: 300,
                margin: EdgeInsets.symmetric(horizontal: kPadding),
                child: const PerformanceChart(),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          CustomBottomBar(utilityController: utilityController),
    );
  }
}
