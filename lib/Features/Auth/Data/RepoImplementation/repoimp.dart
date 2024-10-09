import 'package:flutter_complete_project/Core/Helpers/Error/api_error_handler.dart';
import 'package:flutter_complete_project/Core/Helpers/Error/api_result.dart';
import 'package:flutter_complete_project/Features/Auth/Data/DataSource/remote.dart';
import 'package:flutter_complete_project/Features/Auth/Data/Model/authResponse.dart';
import 'package:flutter_complete_project/Features/Auth/Data/Model/loginModel.dart';
import 'package:flutter_complete_project/Features/Auth/Data/Model/registerModel.dart';

class AuthRepoImp {
  RemoteDataSource datasource;
  AuthRepoImp({required this.datasource});

// Login implementation

// Future < Apires<Authresponse,ApiError> >

  Future<Result<Authresponse, ErrorHandler>> login(
      Loginmodel loginmodel) async {
    try {
      final response = await datasource.login(loginmodel);

      return Result.success(response);
    } catch (error) {
      return Result.error(
        ErrorHandler.handle(error),
      );
    }
  }

// Registeration implementation
  Future<Result<Authresponse, ErrorHandler>> registetr(
      Registermodel registermodel) async {
    try {
      final response = await datasource.register(registermodel);

      return Result.success(response);
    } catch (error) {
      return Result.error(
        ErrorHandler.handle(error),
      );
    }
  }
}
