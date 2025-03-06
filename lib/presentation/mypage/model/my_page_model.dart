import 'package:json_annotation/json_annotation.dart';

part 'my_page_model.g.dart';

@JsonSerializable()
class MyPageModel {
  final String name;
  final int number;
  final List<String> area;
  final int volunteerTime;

  MyPageModel({
    required this.name,
    required this.number,
    required this.area,
    required this.volunteerTime,
  });

  factory MyPageModel.fromJson(Map<String, dynamic> json)
  => _$MyPageModelFromJson(json);
}
