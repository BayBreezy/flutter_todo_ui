import 'package:flutter/material.dart';
import 'package:flutter_profile_ui/controllers/utility_controller.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../info.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key? key,
    required this.utilityController,
  }) : super(key: key);

  final UtilityController utilityController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SalomonBottomBar(
        items: navItems
            .map(
              (item) => SalomonBottomBarItem(
                icon: Icon(item["icon"]),
                title: Text(
                  item["text"],
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
                selectedColor: Theme.of(context).iconTheme.color,
                unselectedColor:
                    Theme.of(context).iconTheme.color?.withOpacity(0.4),
              ),
            )
            .toList(),
        currentIndex: utilityController.bottomNavIndex.value,
        onTap: utilityController.changebottomBarIndex,
        curve: Curves.decelerate,
      ),
    );
  }
}
