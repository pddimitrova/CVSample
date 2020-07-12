import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_response_model.g.dart';

@JsonSerializable()
class UserResponseModel {
  UserResponseModel({
    @required this.id,
    @required this.name,
    @required this.phoneNumber,
    @required this.email,
    @required this.linkedInUrl,
    @required this.profileImageUrl,
    @required this.profileDescription,
    @required this.education,
    @required this.experience,
    @required this.techSkills,
    @required this.softSkills,
  });

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);

  final String id;
  final String name;
  final String phoneNumber;
  final String email;
  final String linkedInUrl;
  final String profileImageUrl;
  final String profileDescription;
  final List<Education> education;
  final List<Experience> experience;
  final List<String> techSkills;
  final List<String> softSkills;
}

@JsonSerializable()
class Education {
  Education({
    @required this.school,
    @required this.degree,
    @required this.yearStart,
    @required this.yearEnd,
  });

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);

  final String school;
  final String degree;
  final String yearStart;
  final String yearEnd;
}

@JsonSerializable()
class Experience {
  Experience({
    @required this.company,
    @required this.position,
    @required this.location,
    @required this.description,
    @required this.dateStart,
    @required this.dateEnd,
  });

  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);

  final String company;
  final String position;
  final String location;
  final String description;
  final String dateStart;
  final String dateEnd;
}
