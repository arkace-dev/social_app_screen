import 'package:flutter/material.dart';

// Utils
import '../../utils/colors.dart';

class ProfileContainer extends StatelessWidget {
  final String userName;
  final String imagePath;

  const ProfileContainer({
    this.userName,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Hello,',
                style: TextStyle(
                  fontSize: 20,
                  color: GREY_TEXT_COLOR,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                userName,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(0, 1),
                  blurRadius: 1,
                  spreadRadius: 1,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(imagePath),
            ),
          ),
        ],
      ),
    );
  }
}
