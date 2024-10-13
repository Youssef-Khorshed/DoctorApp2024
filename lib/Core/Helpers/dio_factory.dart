import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Helpers/sharedHelper.dart';
import 'package:flutter_complete_project/Core/Routing/routes.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    final usertoken = await SharedPrefHelper.getSecuredString('ACCESS_TOKEN');

    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${usertoken ?? ''}',
    };
  }

  static void setTokenIntoHeaderAfterLogin(String token) async {
    await SharedPrefHelper.setSecuredString('ACCESS_TOKEN', token);
    dio?.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
