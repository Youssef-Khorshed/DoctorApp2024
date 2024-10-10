import 'package:dio/dio.dart';
import 'package:flutter_complete_project/Core/Helpers/dio_factory.dart';
import 'package:flutter_complete_project/Features/Auth/Data/DataSource/remote.dart';
import 'package:flutter_complete_project/Features/Auth/Data/RepoImplementation/repoimp.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/Logic/LoginCubti/login_cubit_cubit.dart';
import 'package:flutter_complete_project/Features/Auth/Presentation/Logic/RegisterCubit/register_cubit.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

Future<void> getInit() async {
  // dio
  Dio dio = DioFactory.getDio();

// Auth
  getit.registerFactory<RemoteDataSource>(() => RemoteDataSource(dio));
  getit.registerFactory<AuthRepoImp>(() => AuthRepoImp(datasource: getit()));
  getit.registerFactory<LoginCubit>(() => LoginCubit(
        repoImp: getit(),
      ));
  getit.registerFactory<RegisterCubit>(() => RegisterCubit(
        repoImp: getit(),
      ));
}
