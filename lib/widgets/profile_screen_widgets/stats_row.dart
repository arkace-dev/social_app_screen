import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class StatsRow extends StatelessWidget {
  Widget _rowBuilder(String stat, int value) {
    return Column(
      children: <Widget>[
        Text(
          stat,
          style: TextStyle(
            fontSize: 16,
            color: GREY_TEXT_COLOR,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '$value',
          style: TextStyle(
            fontSize: 22,
            color: BLUE_TEXT_COLOR,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _rowBuilder('Photos', 456),
        _rowBuilder('Followers', 602),
        _rowBuilder('Follows', 290),
      ],
    );
  }
}
