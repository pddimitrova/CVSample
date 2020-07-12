// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponseModel _$UserResponseModelFromJson(Map<String, dynamic> json) {
  return UserResponseModel(
    id: json['Id'] as String,
    name: json['Name'] as String,
    phoneNumber: json['PhoneNumber'] as String,
    email: json['Email'] as String,
    linkedInUrl: json['LinkedInUrl'] as String,
    profileImageUrl: json['ProfileImageUrl'] as String,
    profileDescription: json['ProfileDescription'] as String,
    education: (json['Education'] as List)
        ?.map((e) =>
            e == null ? null : Education.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    experience: (json['Experience'] as List)
        ?.map((e) =>
            e == null ? null : Experience.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    techSkills: (json['TechSkills'] as List)?.map((e) => e as String)?.toList(),
    softSkills: (json['SoftSkills'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$UserResponseModelToJson(UserResponseModel instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'PhoneNumber': instance.phoneNumber,
      'Email': instance.email,
      'LinkedInUrl': instance.linkedInUrl,
      'ProfileImageUrl': instance.profileImageUrl,
      'ProfileDescription': instance.profileDescription,
      'Education': instance.education,
      'Experience': instance.experience,
      'TechSkills': instance.techSkills,
      'SoftSkills': instance.softSkills,
    };

Education _$EducationFromJson(Map<String, dynamic> json) {
  return Education(
    school: json['School'] as String,
    degree: json['Degree'] as String,
    yearStart: json['YearStart'] as String,
    yearEnd: json['YearEnd'] as String,
  );
}

Map<String, dynamic> _$EducationToJson(Education instance) => <String, dynamic>{
      'School': instance.school,
      'Degree': instance.degree,
      'YearStart': instance.yearStart,
      'YearEnd': instance.yearEnd,
    };

Experience _$ExperienceFromJson(Map<String, dynamic> json) {
  return Experience(
    company: json['Company'] as String,
    position: json['Position'] as String,
    location: json['Location'] as String,
    description: json['Description'] as String,
    dateStart: json['DateStart'] as String,
    dateEnd: json['DateEnd'] as String,
  );
}

Map<String, dynamic> _$ExperienceToJson(Experience instance) =>
    <String, dynamic>{
      'Company': instance.company,
      'Position': instance.position,
      'Location': instance.location,
      'Description': instance.description,
      'DateStart': instance.dateStart,
      'DateEnd': instance.dateEnd,
    };
