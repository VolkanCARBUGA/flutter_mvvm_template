// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestModel _$TestModelFromJson(Map<String, dynamic> json) => TestModel(
      json['userId'] as int?,
      json['id'] as int?,
      json['completed'] as bool?,
      json['tittle'] as String?,
    );

Map<String, dynamic> _$TestModelToJson(TestModel instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'tittle': instance.tittle,
      'completed': instance.completed,
    };
