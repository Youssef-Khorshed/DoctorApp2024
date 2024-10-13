import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Helpers/dio_factory.dart';
import 'package:flutter_complete_project/Core/Strings/strings.dart';
import 'package:flutter_complete_project/Features/Auth/Data/DataSource/remote.dart';
import 'package:flutter_complete_project/Features/Auth/Data/RepoImplementation/repoimp.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/Logic/LoginCubti/login_cubit_cubit.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/Logic/RegisterCubit/register_cubit.dart';
import 'package:flutter_complete_project/Features/Home/Data/Datasource/homeremote.dart';
import 'package:flutter_complete_project/Features/Home/Data/RepoImplementation/repoimplementation.dart';
import 'package:flutter_complete_project/Features/Home/Presentation/Logic/bloc/home_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final getit = GetIt.instance;

Future<void> getInit() async {
  // dio
  Dio dio = DioFactory.getDio();

// Auth
  getit.registerFactory<RemoteDataSource>(() => RemoteDataSource(dio));
  getit.registerFactory<HomeRemoteDataSource>(() => HomeRemoteDataSource(dio));

  getit.registerFactory<AuthRepoImp>(() => AuthRepoImp(datasource: getit()));
  getit.registerFactory<HomeRepoImplementation>(
      () => HomeRepoImplementation(remoteDataSource: getit()));
  getit.registerFactory<LoginCubit>(() => LoginCubit(
        repoImp: getit(),
      ));
  getit.registerFactory<RegisterCubit>(() => RegisterCubit(
        repoImp: getit(),
      ));

  getit.registerFactory<HomeBloc>(() => HomeBloc(
        getit(),
      ));
}

Future<void> intialize() async {
  WidgetsFlutterBinding.ensureInitialized();

  Future.wait([
    dotenv.load(fileName: ".env"),
    // To fix texts being hidden bug in flutter_screenutil in release mode.

    ScreenUtil.ensureScreenSize(),
    getInit(),
  ]);
}
