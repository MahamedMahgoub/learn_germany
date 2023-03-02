import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:learn_germany/screens/animated_screen.dart';
import 'package:learn_germany/screens/home_page.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(GermanyApp());
}

class GermanyApp extends StatelessWidget {
  const GermanyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedPage(),
    );
  }
}
