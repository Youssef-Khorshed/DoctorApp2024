import 'package:freezed_annotation/freezed_annotation.dart';
part 'homeModel.g.dart';

@JsonSerializable()
class HomeResonse {
  String? message;
  List<DoctorsList>? data;
  bool? status;
  int? code;

  HomeResonse({this.message, this.data, this.status, this.code});

  factory HomeResonse.fromJson(Map<String, dynamic> json) =>
      _$HomeResonseFromJson(json);
}

@JsonSerializable()
class DoctorsList {
  int? id;
  String? name;
  List<Doctors>? doctors;

  DoctorsList({this.id, this.name, this.doctors});

  factory DoctorsList.fromJson(Map<String, dynamic> json) =>
      _$DoctorsListFromJson(json);
}

@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  Specialization? specialization;
  City? city;
  int? appointPrice;
  String? startTime;
  String? endTime;

  Doctors(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.photo,
      this.gender,
      this.address,
      this.description,
      this.degree,
      this.specialization,
      this.city,
      this.appointPrice,
      this.startTime,
      this.endTime});

  factory Doctors.fromJson(Map<String, dynamic> json) =>
      _$DoctorsFromJson(json);
}

@JsonSerializable()
class Specialization {
  int? id;
  String? name;

  Specialization({this.id, this.name});

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}

@JsonSerializable()
class City {
  int? id;
  String? name;
  Specialization? governrate;

  City({this.id, this.name, this.governrate});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
