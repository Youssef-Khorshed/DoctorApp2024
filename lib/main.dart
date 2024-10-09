import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Routing/app_routes.dart';
import 'package:flutter_complete_project/Core/di/dependencyInjection.dart';
import 'package:flutter_complete_project/doctor_App.dart';

void main() async {
  await getInit();
  runApp(DoctorApp(
    appRoutes: AppRoutes(),
  ));

  ///change any thing
}
