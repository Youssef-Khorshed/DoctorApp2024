import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Helpers/spacing.dart';
import 'package:flutter_complete_project/Core/Theme/Styles/textStyles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupscreenFooter extends StatelessWidget {
  const SignupscreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 45.w),
        child: Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'By logging, you agree to our ',
                style: TextStyles.font11grayRegular,
                children: [
                  TextSpan(
                    text: 'Terms & Conditions ',
                    style: TextStyles.font11grayExtraDark,
                  ),
                  TextSpan(
                    text: 'and \n',
                    style: TextStyles.font11grayRegular,
                  ),
                  TextSpan(
                    text: 'PrivacyPolicy.',
                    style: TextStyles.font11grayExtraDark,
                  ),
                ],
              ),
            ),
            verticalSpace(20.h),
            RichText(
              text: TextSpan(
                  text: 'Already have an account?  ',
                  style: TextStyles.font11grayExtraDark,
                  children: [
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyles.font11primaryBlue,
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
