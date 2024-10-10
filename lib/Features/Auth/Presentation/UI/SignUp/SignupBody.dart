import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Core/Helpers/spacing.dart';
import 'package:flutter_complete_project/Core/Strings/strings.dart';
import 'package:flutter_complete_project/Core/Theme/Color/colors.dart';
import 'package:flutter_complete_project/Core/Theme/Styles/textStyles.dart';
import 'package:flutter_complete_project/Core/Validation/appRegex.dart';
import 'package:flutter_complete_project/Core/Validation/check_emptyText.dart';
import 'package:flutter_complete_project/Core/Validation/customvalidation.dart';
import 'package:flutter_complete_project/Core/Widgets/app_text_button.dart';
import 'package:flutter_complete_project/Core/Widgets/app_text_form_field.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/Logic/RegisterCubit/register_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:country_list_pick/country_list_pick.dart';

class SignUpscreenBody extends StatefulWidget {
  const SignUpscreenBody({super.key});

  @override
  State<SignUpscreenBody> createState() => _SignUpscreenBodyState();
}

class _SignUpscreenBodyState extends State<SignUpscreenBody> {
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late TextEditingController passcontroller;
  @override
  void initState() {
    super.initState();
    passcontroller = context.read<RegisterCubit>().passwordController;
    listenPasswordChanges();
  }

  void listenPasswordChanges() {
    passcontroller.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passcontroller.text);
        hasUpperCase = AppRegex.hasUpperCase(passcontroller.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passcontroller.text);
        hasNumber = AppRegex.hasNumber(passcontroller.text);
        hasMinLength = AppRegex.hasMinLength(passcontroller.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Form(
        key: context.read<RegisterCubit>().formKey,
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
                    style: TextStyles.font14RegularExtraGray
                        .copyWith(height: 1.8.h),
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
                    controller: context.read<RegisterCubit>().emailController,
                    hintText: 'Email',
                    validator: (value) {
                      return Checktext.validateEmptyText(value, 'email');
                    },
                  ),
                  verticalSpace(20),
                  AppTextFormField(
                    controller:
                        context.read<RegisterCubit>().passwordController,
                    hintText: 'Password',
                    validator: (value) {
                      return Checktext.validateEmptyText(value, 'password');
                    },
                  ),
                  passcontroller.text.isNotEmpty
                      ? Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: PasswordValidation(
                              hasLowerCase: hasLowerCase,
                              hasUpperCase: hasUpperCase,
                              hasSpecialCharacters: hasSpecialCharacters,
                              hasNumber: hasNumber,
                              hasMinLength: hasMinLength),
                        )
                      : const SizedBox(),
                  verticalSpace(20),
                  AppTextFormField(
                    controller: context.read<RegisterCubit>().phoneController,
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
                    validator: (value) {
                      return Checktext.validateEmptyText(value, 'number');
                    },
                  ),
                  verticalSpace(25),
                  AppTextButton(
                    buttonText: 'Creat Account',
                    onPressed: () async {
                      if (context
                          .read<RegisterCubit>()
                          .formKey
                          .currentState!
                          .validate()) {
                        await context.read<RegisterCubit>().emitRegister();
                      }
                    },
                    textStyle: TextStyles.font16BoldWhite,
                  ),
                  verticalSpace(25),
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
      ),
    );
  }
}
