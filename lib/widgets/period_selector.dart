import 'package:flutter/material.dart';
import 'package:flutter_profile_ui/config/constants.dart';
import 'package:flutter_profile_ui/controllers/utility_controller.dart';
import 'package:get/get.dart';

import '../info.dart';

class PeriodSelector extends StatelessWidget {
  const PeriodSelector({
    Key? key,
    required this.utilityController,
  }) : super(key: key);

  final UtilityController utilityController;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: kPadding),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: periods
                .map((e) => GestureDetector(
                      onTap: () => utilityController.changeSelectedPeriod(e),
                      child: Obx(
                        () => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: utilityController.selectedPeriod.value == e
                                ? Theme.of(context).colorScheme.secondary
                                : Theme.of(context).primaryColor,
                          ),
                          child: Text(
                            e.toUpperCase(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ))
                .toList(),
          ),
        ));
  }
}
