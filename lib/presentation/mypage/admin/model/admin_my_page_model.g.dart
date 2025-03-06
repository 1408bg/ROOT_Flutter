// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_my_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminMyPageModel _$AdminMyPageModelFromJson(Map<String, dynamic> json) =>
    AdminMyPageModel(
      name: json['name'] as String,
      area: (json['area'] as List<dynamic>)
          .map((e) => Area.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdminMyPageModelToJson(AdminMyPageModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'area': instance.area,
    };

Area _$AreaFromJson(Map<String, dynamic> json) => Area(
      area: json['area'] as String,
    );

Map<String, dynamic> _$AreaToJson(Area instance) => <String, dynamic>{
      'area': instance.area,
    };
