import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Helpers/spacing.dart';
import 'package:flutter_complete_project/Core/Strings/strings.dart';
import 'package:flutter_complete_project/Core/Theme/Color/colors.dart';
import 'package:flutter_complete_project/Core/Theme/Styles/textStyles.dart';
import 'package:flutter_complete_project/Core/Widgets/app_text_button.dart';
import 'package:flutter_complete_project/Core/Widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:country_list_pick/country_list_pick.dart';

class SignUpscreenBody extends StatelessWidget {
  const SignUpscreenBody({super.key});

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
                  'Create Account',
                  style: TextStyles.font24PrimaryBlueBold,
                ),
                verticalSpace(19),
                Text(
                  StringManager.createAcoountText,
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
                  hintText: 'Password',
                  validator: (value) {},
                ),
                verticalSpace(20),
                AppTextFormField(
                  preifxwidget: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CountryListPick(
                          theme: CountryTheme(
                              isShowTitle: false, isShowCode: false),
                          initialSelection: '+61',
                          onChanged: (value) {}),
                      Container(
                        width: 2.w,
                        height: 24.h,
                        color: ColorManager.grayLight,
                      ),
                    ],
                  ),
                  hintText: '  Your number',
                  validator: (value) {},
                ),
                verticalSpace(25),
                AppTextButton(
                  buttonText: 'Creat Account',
                  onPressed: () {},
                  textStyle: TextStyles.font16BoldWhite,
                ),
                verticalSpace(40),
                Row(
                  children: [
                    Container(
                      height: 1,
                      color: ColorManager.grayRegular,
                      width: 118.w,
                    ),
                    Text(
                      ' Or sign up with ',
                      style: TextStyles.font11grayRegular,
                    ),
                    Container(
                      height: 1,
                      color: ColorManager.grayRegular,
                      width: 118.w,
                    )
                  ],
                ),
                verticalSpace(30),
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
