import 'package:flutter/material.dart';

// Utils
import '../../utils/colors.dart';

class ConversationListItem extends StatelessWidget {
  final String imageDes;
  final String name;
  final String lastChat;

  const ConversationListItem({
    this.imageDes,
    this.name,
    this.lastChat,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4.0,
        vertical: 8.0,
      ),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imageDes),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  color: BLUE_TEXT_COLOR,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                lastChat,
                style: TextStyle(
                  fontSize: 16,
                  color: GREY_TEXT_COLOR,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
