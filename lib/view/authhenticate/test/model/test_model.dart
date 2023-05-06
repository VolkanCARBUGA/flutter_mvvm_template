import 'package:flutter_mvvm_template/core/base/model/base_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'test_model.g.dart';

@JsonSerializable(nullable: false)
class TestModel extends BaseModel {
  int? userId;
  int? id;
  String? tittle;
  bool? completed;
  TestModel(this.userId, this.id, this.completed, this.tittle);
  factory TestModel.fromJson(Map<String, dynamic> json) {
    return _$TestModelFromJson(json);
  }

  Map<String, dynamic> toJson()  {
    return _$TestModelToJson(this);
  }

  @override
  fromJson(Map<String, Object> json) {
    return _$TestModelFromJson(json);
  }
}
