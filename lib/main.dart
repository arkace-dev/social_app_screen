import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Screens
import './screens/home_screen.dart';
import './screens/profile_screen.dart';
import './screens/conversation_screen.dart';

// Utils
import './utils/colors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: CANVAS_COLOR,
        fontFamily: 'Raleway',
      ),
      home: HomeScreen(),
      routes: {
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        ConversationScreen.routeName: (ctx) => ConversationScreen(),
      },
    );
  }
}
