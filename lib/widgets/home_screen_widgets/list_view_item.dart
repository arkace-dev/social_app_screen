import 'package:flutter/material.dart';

// Utils
import '../../utils/colors.dart';

class ListViewItem extends StatelessWidget {
  final String imageDes;

  const ListViewItem({this.imageDes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(colors: PINK_GRADIENT),
        ),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(47),
            child: Image.asset(
              imageDes,
              height: 94,
              width: 94,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
