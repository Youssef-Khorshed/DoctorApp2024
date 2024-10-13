import 'package:dio/dio.dart';
import 'package:flutter_complete_project/Core/Strings/strings.dart';
import 'package:flutter_complete_project/Features/Home/Data/Model/homeModel.dart';
import 'package:retrofit/retrofit.dart';
part 'homeremote.g.dart';

@RestApi(baseUrl: StringManager.baseUrl)
abstract class HomeRemoteDataSource {
  factory HomeRemoteDataSource(Dio dio, {String baseUrl}) =
      _HomeRemoteDataSource;
  @GET(StringManager.homeUrl)
  Future<HomeResonse> getHomeData();
}
