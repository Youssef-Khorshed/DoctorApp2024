import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/UI/Onboadrding/onboarding_Body.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/UI/Onboadrding/onboarding_Footer.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/UI/Onboadrding/onboarding_Header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
      child: const CustomScrollView(
        slivers: [OnboardingHeader(), OnboardingBody(), OnboardingFooter()],
      ),
    )));
  }
}
