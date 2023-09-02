import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

import '../home_screen/home_page.dart';

class intro_screen extends StatelessWidget {
  intro_screen({super.key});
  final List<Introduction> list = [
    Introduction(
      title: 'Jokes',
      subTitle: 'Get new jokes every time ',
      imageUrl: 'assets/joke.png',
    ),
    Introduction(
      title: 'Save Favorite',
      subTitle: 'Your order will be immediately collected and',
      imageUrl: 'assets/save.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        Get.offNamedUntil('/home', (route) => false);
      },
    );
  }
}
