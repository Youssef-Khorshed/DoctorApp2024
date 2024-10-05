import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Features/Auth/Onboadrding/onboarding_Body.dart';
import 'package:flutter_complete_project/Features/Auth/Onboadrding/onboarding_Footer.dart';
import 'package:flutter_complete_project/Features/Auth/Onboadrding/onboarding_Header.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
            child: CustomScrollView(
      slivers: [OnboardingHeader(), OnboardingBody(), OnboardingFooter()],
    )));
  }
}
