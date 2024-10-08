import 'package:json_annotation/json_annotation.dart';
part 'registerModel.g.dart';

@JsonSerializable()
class Registermodel {
  String name;
  String email;
  String password;
  String phone;
  @JsonKey(name: "confirm_password")
  String confirmPassword;
  int gender;

  Registermodel(
      {required this.name,
      required this.email,
      required this.password,
      required this.phone,
      required this.confirmPassword,
      required this.gender});
  Map<String, dynamic> toJson() => _$RegistermodelToJson(this);
}
