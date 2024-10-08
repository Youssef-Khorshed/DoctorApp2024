import 'package:json_annotation/json_annotation.dart';
part 'loginModel.g.dart';

@JsonSerializable()
class Loginmodel {
  String email;
  String password;
  Loginmodel({required this.email, required this.password});

  Map<String, dynamic> toJson() => _$LoginmodelToJson(this);
}
