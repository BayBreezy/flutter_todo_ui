import 'package:flutter/material.dart';
import 'package:flutter_profile_ui/config/constants.dart';
import 'package:flutter_profile_ui/controllers/utility_controller.dart';
import 'package:flutter_profile_ui/widgets/custom_bottom_bar.dart';
import 'package:flutter_profile_ui/widgets/theme_switcher.dart';
import 'package:flutter_profile_ui/widgets/todo_grid.dart';
import 'package:flutter_profile_ui/widgets/welcome_header.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  var utilityController = Get.put<UtilityController>(UtilityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          CustomBottomBar(utilityController: utilityController),
      body: SafeArea(
        child: Column(
          children: [
            const WelcomeHeader(),
            SizedBox(height: kPadding),
            const TodoGrid()
          ],
        ),
      ),
      floatingActionButton: const ThemeSwitcher(),
    );
  }
}
