import 'package:flutter/material.dart';
import 'package:flutter_complete_project/Core/Helpers/Error/api_error_handler.dart';
import 'package:flutter_complete_project/Core/Helpers/Error/api_result.dart';
import 'package:flutter_complete_project/Features/Home/Data/Datasource/homeremote.dart';
import 'package:flutter_complete_project/Features/Home/Data/Model/homeModel.dart';

class HomeRepoImplementation {
  HomeRemoteDataSource remoteDataSource;
  HomeRepoImplementation({required this.remoteDataSource});
  Future<Result<HomeResonse, ErrorHandler>> getHomeData() async {
    try {
      final res = await remoteDataSource.getHomeData();
      debugPrint(res.message);
      return Result.success(res);
    } catch (error) {
      return Result.error(ErrorHandler.handle(error));
    }
  }
}
