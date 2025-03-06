import 'package:json_annotation/json_annotation.dart';

part 'detail_my_page_model.g.dart';

@JsonSerializable()
class DetailMyPageModel {
  final String totalVolunteerTime;
  final List<VolunteerList> volunteerList;

  DetailMyPageModel({
    required this.totalVolunteerTime,
    required this.volunteerList,
  });

  factory DetailMyPageModel.fromJson(Map<String, dynamic> json) =>
      _$DetailMyPageModelFromJson(json);
}

@JsonSerializable()
class VolunteerList {
  final String volunteerAct;
  final int volunteerTime;

  VolunteerList({
    required this.volunteerAct,
    required this.volunteerTime,
  });

  factory VolunteerList.fromJson(Map<String, dynamic> json) =>
      _$VolunteerListFromJson(json);
}
