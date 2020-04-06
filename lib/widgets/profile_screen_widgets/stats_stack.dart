import 'package:flutter/material.dart';

// Utils
import '../../utils/colors.dart';

// Widgets
import './stats_row.dart';

class StatsStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 380,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                offset: Offset(0, 4),
                blurRadius: 3,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  'My Profile',
                  style: TextStyle(
                    fontSize: 26,
                    color: BLUE_TEXT_COLOR,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
                child: Hero(
                  tag: 'profile_picture',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset('assets/images/my_dp.png'),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Arkace',
                style: TextStyle(
                  fontSize: 22,
                  color: BLUE_TEXT_COLOR,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'UI/UX Designer & Developer',
                style: TextStyle(
                  fontSize: 16,
                  color: GREY_TEXT_COLOR,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Mumbai, India',
                style: TextStyle(
                  fontSize: 16,
                  color: GREY_TEXT_COLOR,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(height: 40),
              StatsRow(),
            ],
          ),
        ),
      ],
    );
  }
}
