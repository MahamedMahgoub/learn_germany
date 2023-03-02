import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'home_page.dart';

class AnimatedPage extends StatelessWidget {
  const AnimatedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 700,
      backgroundColor: Colors.grey.shade300,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.rightToLeft,
      splash: Image(
        image: AssetImage('assets/images/germany.png'),
      ),
      nextScreen: HomePage(),
    );
  }
}
