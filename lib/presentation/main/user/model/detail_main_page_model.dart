import 'package:json_annotation/json_annotation.dart';

part 'detail_main_page_model.g.dart';

@JsonSerializable()
class DetailMainPageModel {
  final int id;
  final String title;
  final String activityDetails;
  final ApplicationOnPeriod applicationPeriod;
  final List<DayOfWeek> dayOfWeek;
  final String place;
  final String time;
  final String personnel;
  final List<Role> role;

  DetailMainPageModel({
    required this.id,
    required this.title,
    required this.activityDetails,
    required this.applicationPeriod,
    required this.dayOfWeek,
    required this.place,
    required this.time,
    required this.personnel,
    required this.role,
  });

  factory DetailMainPageModel.fromJson(Map<String, dynamic> json) =>
      _$DetailMainPageModelFromJson(json);
}

@JsonSerializable()
class ApplicationOnPeriod {
  final String startDate;
  final String endDate;

  ApplicationOnPeriod({
    required this.startDate,
    required this.endDate,
  });

  factory ApplicationOnPeriod.fromJson(Map<String, dynamic> json) =>
      _$ApplicationOnPeriodFromJson(json);
}

@JsonSerializable()
class DayOfWeek {
  final int dayId;
  final String dayOfWeek;

  DayOfWeek({
    required this.dayId,
    required this.dayOfWeek,
  });

  factory DayOfWeek.fromJson(Map<String, dynamic> json) =>
      _$DayOfWeekFromJson(json);
}

@JsonSerializable()
class Role {
  final int roleId;
  final String title;

  Role({
    required this.roleId,
    required this.title,
  });

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}
