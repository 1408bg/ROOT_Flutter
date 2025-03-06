// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_main_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailMainPageModel _$DetailMainPageModelFromJson(Map<String, dynamic> json) =>
    DetailMainPageModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      activityDetails: json['activityDetails'] as String,
      applicationPeriod: ApplicationOnPeriod.fromJson(
          json['applicationPeriod'] as Map<String, dynamic>),
      dayOfWeek: (json['dayOfWeek'] as List<dynamic>)
          .map((e) => DayOfWeek.fromJson(e as Map<String, dynamic>))
          .toList(),
      place: json['place'] as String,
      time: json['time'] as String,
      personnel: json['personnel'] as String,
      role: (json['role'] as List<dynamic>)
          .map((e) => Role.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DetailMainPageModelToJson(
        DetailMainPageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'activityDetails': instance.activityDetails,
      'applicationPeriod': instance.applicationPeriod,
      'dayOfWeek': instance.dayOfWeek,
      'place': instance.place,
      'time': instance.time,
      'personnel': instance.personnel,
      'role': instance.role,
    };

ApplicationOnPeriod _$ApplicationOnPeriodFromJson(Map<String, dynamic> json) =>
    ApplicationOnPeriod(
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
    );

Map<String, dynamic> _$ApplicationOnPeriodToJson(
        ApplicationOnPeriod instance) =>
    <String, dynamic>{
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };

DayOfWeek _$DayOfWeekFromJson(Map<String, dynamic> json) => DayOfWeek(
      dayId: (json['dayId'] as num).toInt(),
      dayOfWeek: json['dayOfWeek'] as String,
    );

Map<String, dynamic> _$DayOfWeekToJson(DayOfWeek instance) => <String, dynamic>{
      'dayId': instance.dayId,
      'dayOfWeek': instance.dayOfWeek,
    };

Role _$RoleFromJson(Map<String, dynamic> json) => Role(
      roleId: (json['roleId'] as num).toInt(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
      'roleId': instance.roleId,
      'title': instance.title,
    };
