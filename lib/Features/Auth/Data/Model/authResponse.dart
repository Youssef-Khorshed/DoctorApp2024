import 'package:json_annotation/json_annotation.dart';
part 'authResponse.g.dart';

@JsonSerializable()
class Authresponse {
  String? message;
  UserData? data;
  bool? status;
  int? code;

  Authresponse({this.message, this.data, this.status, this.code});

  factory Authresponse.fromJson(Map<String, dynamic> json) =>
      _$AuthresponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  String? username;

  UserData({this.token, this.username});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
