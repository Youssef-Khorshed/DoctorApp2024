import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Helpers/spacing.dart';
import 'package:flutter_complete_project/Core/Strings/strings.dart';
import 'package:flutter_complete_project/Core/Theme/Color/colors.dart';
import 'package:flutter_complete_project/Core/Theme/Styles/textStyles.dart';
import 'package:flutter_complete_project/Core/Widgets/app_text_button.dart';
import 'package:flutter_complete_project/Core/Widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginscreenBody extends StatelessWidget {
  const LoginscreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24PrimaryBlueBold,
                ),
                verticalSpace(19),
                Text(
                  StringManager.signupHeaderText,
                  style:
                      TextStyles.font14RegularExtraGray.copyWith(height: 1.8.h),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                verticalSpace(20),
                AppTextFormField(
                  hintText: 'Email',
                  validator: (value) {},
                ),
                verticalSpace(20),
                AppTextFormField(
                  hintText: 'Email',
                  validator: (value) {},
                ),
                verticalSpace(10),
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (context) {}),
                    Text(
                      'Remember me',
                      style: TextStyles.font11grayRegular,
                    ),
                    Spacer(),
                    Text(
                      'Forgot Password?',
                      style: TextStyles.font11primaryBlue,
                    )
                  ],
                ),
                verticalSpace(20),
                AppTextButton(
                  buttonText: 'Login',
                  onPressed: () {},
                  textStyle: TextStyles.font16BoldWhite,
                ),
                verticalSpace(50),
                Row(
                  children: [
                    Container(
                      height: 1,
                      color: ColorManager.grayRegular,
                      width: 118.w,
                    ),
                    Text(
                      ' Or sign in with ',
                      style: TextStyles.font11grayRegular,
                    ),
                    Container(
                      height: 1,
                      color: ColorManager.grayRegular,
                      width: 118.w,
                    )
                  ],
                ),
                verticalSpace(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SvgPicture.asset(
                      'assets/svgs/googleicon.svg',
                      height: 46.h,
                      width: 46.w,
                    ),
                    SvgPicture.asset(
                      'assets/svgs/facebookicon.svg',
                      height: 46.h,
                      width: 46.w,
                    ),
                    SvgPicture.asset(
                      'assets/svgs/appleicon.svg',
                      height: 46.h,
                      width: 46.w,
                    ),
                  ],
                ),
                verticalSpace(20)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
