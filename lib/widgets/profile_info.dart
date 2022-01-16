import 'package:flutter/material.dart';
import 'package:flutter_profile_ui/config/constants.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          CircleAvatar(
            radius: 68,
            backgroundColor: Theme.of(context).primaryColor,
            child: const CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage("assets/images/user.jpg"),
            ),
          ),
          SizedBox(height: kPadding / 2),
          const Text(
            "James Riley Doe",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          const Text(
            "jamesrileydoe@gmail.com",
            style: TextStyle(),
          ),
        ],
      ),
    );
  }
}
