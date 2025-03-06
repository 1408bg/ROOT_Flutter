// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainPageModel _$MainPageModelFromJson(Map<String, dynamic> json) =>
    MainPageModel(
      content: (json['content'] as List<dynamic>)
          .map((e) => Contents.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MainPageModelToJson(MainPageModel instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

Contents _$ContentsFromJson(Map<String, dynamic> json) => Contents(
      postId: (json['postId'] as num).toInt(),
      title: json['title'] as String,
    );

Map<String, dynamic> _$ContentsToJson(Contents instance) => <String, dynamic>{
      'postId': instance.postId,
      'title': instance.title,
    };
