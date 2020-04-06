import 'package:flutter/material.dart';

// Widgets
import '../widgets/profile_screen_widgets/profile_images.dart';
import '../widgets/profile_screen_widgets/stats_stack.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 40.0,
              bottom: 24.0,
            ),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  child: Icon(
                    Icons.chevron_left,
                    size: 28,
                  ),
                  onTap: () => Navigator.of(context).pop(),
                ),
                const Spacer(),
                GestureDetector(
                  child: Icon(
                    Icons.more_vert,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(80),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            StatsStack(),
            ProfileImages(),
          ],
        ),
      ),
    );
  }
}
