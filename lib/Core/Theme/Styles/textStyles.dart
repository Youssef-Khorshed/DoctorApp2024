import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Theme/Color/colors.dart';
import 'package:flutter_complete_project/Core/Theme/font_weight_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24GrayExtra = TextStyle(
      fontWeight: FontWeightHelper.bold,
      fontSize: 24.sp,
      color: ColorManager.grayExtraDark);
  static TextStyle font24PrimaryBlueBold = TextStyle(
      fontWeight: FontWeightHelper.bold,
      fontSize: 24.sp,
      color: ColorManager.primaryBlue);

  static TextStyle font32primaryBlue = TextStyle(
      color: ColorManager.primaryBlue,
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.bold);
  static TextStyle font11primaryBlue = TextStyle(
      color: ColorManager.primaryBlue,
      fontSize: 11.sp,
      fontWeight: FontWeightHelper.regular);

  static TextStyle font11grayExtraRegular = TextStyle(
      color: ColorManager.grayExtraRegular,
      fontWeight: FontWeightHelper.regular,
      fontSize: 11.sp);
  static TextStyle font11grayRegular = TextStyle(
      color: ColorManager.grayRegular,
      fontWeight: FontWeightHelper.regular,
      fontSize: 11.sp);
  static TextStyle font11grayExtraDark = TextStyle(
      color: ColorManager.grayExtraDark,
      fontWeight: FontWeightHelper.regular,
      fontSize: 11.sp);

  static TextStyle font16BoldWhite = TextStyle(
      color: ColorManager.whiteBackground,
      fontWeight: FontWeightHelper.bold,
      fontSize: 16.sp);
  static TextStyle font14RegularExtraGray = TextStyle(
      color: ColorManager.grayExtraRegular,
      fontWeight: FontWeightHelper.regular,
      fontSize: 14.sp);
  static TextStyle font14grayExtraDark = TextStyle(
      color: ColorManager.grayExtraDark,
      fontWeight: FontWeightHelper.regular,
      fontSize: 14.sp);
  static TextStyle font14GrayRegular = TextStyle(
      color: ColorManager.grayRegular,
      fontWeight: FontWeightHelper.regular,
      fontSize: 14.sp);
}
