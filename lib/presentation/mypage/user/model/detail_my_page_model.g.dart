// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_my_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailMyPageModel _$DetailMyPageModelFromJson(Map<String, dynamic> json) =>
    DetailMyPageModel(
      totalVolunteerTime: json['totalVolunteerTime'] as String,
      volunteerList: (json['volunteerList'] as List<dynamic>)
          .map((e) => VolunteerList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DetailMyPageModelToJson(DetailMyPageModel instance) =>
    <String, dynamic>{
      'totalVolunteerTime': instance.totalVolunteerTime,
      'volunteerList': instance.volunteerList,
    };

VolunteerList _$VolunteerListFromJson(Map<String, dynamic> json) =>
    VolunteerList(
      volunteerAct: json['volunteerAct'] as String,
      volunteerTime: (json['volunteerTime'] as num).toInt(),
    );

Map<String, dynamic> _$VolunteerListToJson(VolunteerList instance) =>
    <String, dynamic>{
      'volunteerAct': instance.volunteerAct,
      'volunteerTime': instance.volunteerTime,
    };
