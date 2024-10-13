import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Core/Routing/routes.dart';
import 'package:flutter_complete_project/Core/di/dependencyInjection.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/Logic/LoginCubti/login_cubit_cubit.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/Logic/RegisterCubit/register_cubit.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/UI/Login/LoginScreen.dart';
import 'package:flutter_complete_project/Features/Auth/Onboadrding/onboarding.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/UI/SignUp/signupScreen.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/Logic/bloc/home_bloc.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/UI/HomeScreen.dart';

class AppRoutes {
  Route generateroute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (context) => const Onboarding());
      case Routes.login:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getit<LoginCubit>(),
                  child: const Loginscreen(),
                ));
      case Routes.register:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getit<RegisterCubit>(),
                  child: const Signupscrenn(),
                ));
      case Routes.home:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => getit<HomeBloc>(),
                  child: const Homescreen(),
                ));
      default:
        return MaterialPageRoute(
            builder: (context) => const Text('data not found'));
    }
  }
}
