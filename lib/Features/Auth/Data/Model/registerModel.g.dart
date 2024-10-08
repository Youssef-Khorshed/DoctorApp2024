// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registerModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Registermodel _$RegistermodelFromJson(Map<String, dynamic> json) =>
    Registermodel(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      phone: json['phone'] as String,
      confirmPassword: json['confirm_password'] as String,
      gender: (json['gender'] as num).toInt(),
    );

Map<String, dynamic> _$RegistermodelToJson(Registermodel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'phone': instance.phone,
      'confirm_password': instance.confirmPassword,
      'gender': instance.gender,
    };
