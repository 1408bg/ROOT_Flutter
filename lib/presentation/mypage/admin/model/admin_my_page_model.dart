import 'package:json_annotation/json_annotation.dart';

part 'admin_my_page_model.g.dart';

@JsonSerializable()
class AdminMyPageModel {
  final String name;
  final List<Area> area;

  AdminMyPageModel({
    required this.name,
    required this.area,
  });
  
  factory AdminMyPageModel.fromJson(Map<String, dynamic> json)
  => _$AdminMyPageModelFromJson(json);
}

@JsonSerializable()
class Area {
  final String area;

  Area({required this.area});

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}
