import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Helpers/sharedHelper.dart';
import 'package:flutter_complete_project/Core/Routing/app_routes.dart';
import 'package:flutter_complete_project/Core/Routing/routes.dart';
import 'package:flutter_complete_project/Core/Theme/Color/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorApp extends StatelessWidget {
  AppRoutes appRoutes;
  DoctorApp({super.key, required this.appRoutes});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Doc App',
          theme: ThemeData(
            primaryColor: ColorManager.primaryBlue,
            appBarTheme: const AppBarTheme(
                backgroundColor: ColorManager.whiteBackground),
            scaffoldBackgroundColor: ColorManager.whiteBackground,
          ),
          onGenerateRoute: appRoutes.generateroute,
          initialRoute:
              SharedPrefHelper.getSecuredString('ACCESS_TOKEN') == null
                  ? Routes.login
                  : Routes.home,
        );
      },
    );
  }
}
