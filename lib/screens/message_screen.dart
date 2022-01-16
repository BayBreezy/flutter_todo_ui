import 'package:flutter/material.dart';
import 'package:flutter_profile_ui/controllers/utility_controller.dart';
import 'package:flutter_profile_ui/info.dart';
import 'package:flutter_profile_ui/widgets/custom_bottom_bar.dart';
import 'package:flutter_profile_ui/widgets/theme_switcher.dart';
import 'package:get/get.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({Key? key}) : super(key: key);
  UtilityController utilityController =
      Get.put<UtilityController>(UtilityController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const ThemeSwitcher(),
      body: SafeArea(
          child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (ctx, i) {
          var msg = messages[i];
          return ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 26),
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(msg.image),
            ),
            title: Text(msg.senderName),
            subtitle: Text(msg.topic),
            enableFeedback: true,
            enabled: true,
          );
        },
        itemCount: messages.length,
      )),
      bottomNavigationBar:
          CustomBottomBar(utilityController: utilityController),
    );
  }
}
