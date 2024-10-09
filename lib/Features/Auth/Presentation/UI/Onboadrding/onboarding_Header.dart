import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Helpers/spacing.dart';
import 'package:flutter_complete_project/Core/Strings/strings.dart';
import 'package:flutter_complete_project/Core/Theme/Styles/textStyles.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Container(),
      pinned: false,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(StringManager.logo),
            horizontalSpace(10),
            Text(
              StringManager.appName,
              style: TextStyles.font24GrayExtra,
            ),
          ],
        ),
      ),
    );
  }
}
