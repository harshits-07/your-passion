import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:your_passion/core/colors.dart';
import 'package:your_passion/screens/authentication-screen/authentication_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  static const String path = '/onboarding-screen';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<PageViewModel> pages = [
    PageViewModel(
      title: "Welcome",
      body: "This is a job app where you can find your next opportunity.",
      image: Center(
        child: Icon(
          CupertinoIcons.briefcase_fill,
          size: 100,
          color: AppColors.primaryColor,
        ),
      ),
    ),
    PageViewModel(
      title: "Easy Apply",
      body: "Submit your application with just a few taps.",
      image: Center(
        child: Icon(Icons.send, size: 100, color: AppColors.primaryColor),
      ),
    ),
    PageViewModel(
      title: "Get Hired",
      body: "Track offers and get hired fast.",
      image: Center(
        child: Icon(
          CupertinoIcons.hand_thumbsup_fill,
          size: 100,
          color: AppColors.primaryColor,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: AppColors.backgroundColor,
      pages: pages,
      onDone: () => context.push(AuthenticationScreen.path),
      onSkip: () => context.push(AuthenticationScreen.path),
      showSkipButton: true,
      skip: const Text("SKIP", style: TextStyle(fontSize: 18)),
      next: const Icon(CupertinoIcons.right_chevron, size: 20),
      done: const Icon(Icons.done, size: 24),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        activeSize: Size(22.0, 10.0),
        spacing: EdgeInsets.symmetric(horizontal: 6.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
