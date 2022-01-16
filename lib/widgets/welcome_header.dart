import 'package:flutter/material.dart';
import 'package:flutter_profile_ui/config/constants.dart';

class WelcomeHeader extends StatelessWidget {
  const WelcomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Welcome Breezy",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  "Which goals do you want to \nachieve today?",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 38,
            backgroundColor: Theme.of(context).primaryColor,
            child: const CircleAvatar(
              radius: 34,
              backgroundImage: AssetImage("assets/images/user.jpg"),
            ),
          )
        ],
      ),
    );
  }
}
