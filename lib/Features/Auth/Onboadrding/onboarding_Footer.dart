import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Helpers/spacing.dart';
import 'package:flutter_complete_project/Core/Strings/strings.dart';
import 'package:flutter_complete_project/Core/Theme/Color/colors.dart';
import 'package:flutter_complete_project/Core/Theme/Styles/textStyles.dart';
import 'package:flutter_complete_project/Core/Theme/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingFooter extends StatelessWidget {
  const OnboardingFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h),
        child: Column(
          children: [
            verticalSpace(18),
            Text(
              StringManager.onboardingTextFooter,
              textAlign: TextAlign.center,
              style: TextStyles.font11grayExtraRegular,
            ),
            verticalSpace(30),
            SizedBox(
              width: 311.w,
              height: 52.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    backgroundColor: ColorManager.primaryBlue),
                onPressed: () {},
                child: Text('Get Started', style: TextStyles.font16BoldWhite),
              ),
            )
          ],
        ),
      ),
    );
  }
}
