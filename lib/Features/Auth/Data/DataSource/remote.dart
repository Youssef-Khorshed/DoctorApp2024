import 'package:flutter_complete_project/Core/Strings/strings.dart';
import 'package:flutter_complete_project/Features/Auth/Data/Model/authResponse.dart';
import 'package:flutter_complete_project/Features/Auth/Data/Model/loginModel.dart';
import 'package:flutter_complete_project/Features/Auth/Data/Model/registerModel.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
part 'remote.g.dart';

@RestApi(baseUrl: StringManager.baseUrl)
abstract class RemoteDataSource {
  factory RemoteDataSource(Dio dio, {String baseUrl}) = _RemoteDataSource;
  @POST(StringManager.loginUrl)
  Future<Authresponse> login(@Body() Loginmodel loginmodel);
  @POST(StringManager.registerUrl)
  Future<Authresponse> register(@Body() Registermodel registermodel);
}
