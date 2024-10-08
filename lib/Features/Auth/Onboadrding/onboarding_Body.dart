import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Strings/strings.dart';
import 'package:flutter_complete_project/Core/Theme/Color/colors.dart';
import 'package:flutter_complete_project/Core/Theme/Styles/textStyles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SvgPicture.asset(
            StringManager.onboardingBackground,
          ),
          Container(
              foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  ColorManager.whiteBackground,
                  ColorManager.whiteBackground.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.10, 0.5],
              )),
              child: Image.asset(StringManager.onboardingDoctorImage)),
          Positioned(
              bottom: 20.h,
              left: 0,
              right: 0,
              child: Text(
                StringManager.onboardingTextBody,
                textAlign: TextAlign.center,
                style: TextStyles.font32primaryBlue.copyWith(height: 1.5.h),
              )),
        ],
      ),
    );
  }
}
