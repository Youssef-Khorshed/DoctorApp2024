import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Helpers/spacing.dart';
import 'package:flutter_complete_project/Core/Theme/Color/colors.dart';
import 'package:flutter_complete_project/Features/Auth/Onboadrding/onboarding_Body.dart';
import 'package:flutter_complete_project/Features/Auth/Onboadrding/onboarding_Footer.dart';
import 'package:flutter_complete_project/Features/Auth/Onboadrding/onboarding_Header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
      child: CustomScrollView(
        slivers: [OnboardingHeader(), OnboardingBody(), OnboardingFooter()],
      ),
    )));
  }
}
