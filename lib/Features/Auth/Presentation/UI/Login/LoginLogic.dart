import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/Core/Extensions/navigation.dart';
import 'package:flutter_complete_project/Core/Routing/routes.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/Logic/LoginCubti/login_cubit_cubit.dart';

Future<void> loginlogic({required BuildContext context}) async {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    await context.read<LoginCubit>().emitLogin();
    if (context.read<LoginCubit>().state is Failure) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login Failed'),
        ),
      );
    } else if (context.read<LoginCubit>().state is Success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login Success'),
        ),
      );

      context.pushReplacementNamed(Routes.home);
    }
  }
}
