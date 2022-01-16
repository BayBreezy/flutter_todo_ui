import 'package:flutter/material.dart';
import 'package:flutter_profile_ui/config/constants.dart';

import '../info.dart';
import 'todo_card.dart';

class TodoGrid extends StatelessWidget {
  const TodoGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kPadding),
        child: GridView.builder(
            itemCount: cardData.length,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: kPadding / 2,
              mainAxisSpacing: kPadding * 0.7,
            ),
            itemBuilder: (ctx, i) {
              var card = cardData[i];
              return TodoCard(card: card);
            }),
      ),
    );
  }
}
