import 'package:flutter/material.dart';
import 'package:tweet_dock/screens/bottom_Bar.dart';
import 'package:tweet_dock/screens/home_screen.dart';
import 'package:tweet_dock/screens/landing_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tweet_dock/screens/logIn_screen.dart';
import 'package:tweet_dock/screens/signup_screen.dart';

void main() {
  runApp(TweetDock());
}

class TweetDock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.latoTextTheme(textTheme)),
      home: HomeScreen(),
    );
  }
}
