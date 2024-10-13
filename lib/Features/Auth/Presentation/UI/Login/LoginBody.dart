import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Core/Extensions/navigation.dart';
import 'package:flutter_complete_project/Core/Helpers/spacing.dart';
import 'package:flutter_complete_project/Core/Routing/routes.dart';
import 'package:flutter_complete_project/Core/Strings/strings.dart';
import 'package:flutter_complete_project/Core/Theme/Color/colors.dart';
import 'package:flutter_complete_project/Core/Theme/Styles/textStyles.dart';
import 'package:flutter_complete_project/Core/Validation/appRegex.dart';
import 'package:flutter_complete_project/Core/Validation/check_emptyText.dart';
import 'package:flutter_complete_project/Core/Validation/customvalidation.dart';
import 'package:flutter_complete_project/Core/Widgets/app_text_button.dart';
import 'package:flutter_complete_project/Core/Widgets/app_text_form_field.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/Logic/LoginCubti/login_cubit_cubit.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/UI/Login/LoginLogic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginscreenBody extends StatefulWidget {
  const LoginscreenBody({super.key});

  @override
  State<LoginscreenBody> createState() => _LoginscreenBodyState();
}

class _LoginscreenBodyState extends State<LoginscreenBody> {
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late TextEditingController loginpasscontroller;
  @override
  void initState() {
    super.initState();
    loginpasscontroller = context.read<LoginCubit>().passwordController;
    listenPasswordChanges();
  }

  void listenPasswordChanges() {
    loginpasscontroller.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(loginpasscontroller.text);
        hasUpperCase = AppRegex.hasUpperCase(loginpasscontroller.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(loginpasscontroller.text);
        hasNumber = AppRegex.hasNumber(loginpasscontroller.text);
        hasMinLength = AppRegex.hasMinLength(loginpasscontroller.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Form(
        key: context.read<LoginCubit>().formKey,
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
                    controller: context.read<LoginCubit>().emailController,
                    hintText: 'Email',
                    validator: (value) {
                      return Checktext.validateEmptyText(value, 'email');
                    },
                  ),
                  verticalSpace(20),
                  AppTextFormField(
                    controller: context.read<LoginCubit>().passwordController,
                    hintText: 'Password',
                    validator: (value) {
                      return Checktext.validateEmptyText(value, 'password');
                    },
                  ),
                  loginpasscontroller.text.isNotEmpty
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
                  verticalSpace(10),
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (context) {}),
                      Text(
                        'Remember me',
                        style: TextStyles.font11grayRegular,
                      ),
                      const Spacer(),
                      Text(
                        'Forgot Password?',
                        style: TextStyles.font11primaryBlue,
                      )
                    ],
                  ),
                  verticalSpace(20),
                  AppTextButton(
                    buttonText: 'Login',
                    onPressed: () async {
                      await loginlogic(context: context);
                    },
                    textStyle: TextStyles.font16BoldWhite,
                  ),
                  verticalSpace(35),
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
                  verticalSpace(35),
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
                  verticalSpace(30)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
