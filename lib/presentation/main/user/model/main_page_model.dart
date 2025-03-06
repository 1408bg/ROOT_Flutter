import 'package:json_annotation/json_annotation.dart';


part 'main_page_model.g.dart';

@JsonSerializable()
class MainPageModel {
  final List<Contents> content;

  MainPageModel({required this.content});

  factory MainPageModel.fromJson(Map<String, dynamic> json)
  => _$MainPageModelFromJson(json);
}

@JsonSerializable()
class Contents {
  final int postId;
  final String title;

  Contents({
    required this.postId,
    required this.title,
  });

  factory Contents.fromJson(Map<String, dynamic> json)
  => _$ContentsFromJson(json);
}
