// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyPageModel _$MyPageModelFromJson(Map<String, dynamic> json) => MyPageModel(
      name: json['name'] as String,
      number: (json['number'] as num).toInt(),
      area: (json['area'] as List<dynamic>).map((e) => e as String).toList(),
      volunteerTime: (json['volunteerTime'] as num).toInt(),
    );

Map<String, dynamic> _$MyPageModelToJson(MyPageModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'area': instance.area,
      'volunteerTime': instance.volunteerTime,
    };
