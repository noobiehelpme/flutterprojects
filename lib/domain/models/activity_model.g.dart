// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActivityModel _$$_ActivityModelFromJson(Map<String, dynamic> json) =>
    _$_ActivityModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ActivityData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ActivityModelToJson(_$_ActivityModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_ActivityData _$$_ActivityDataFromJson(Map<String, dynamic> json) =>
    _$_ActivityData(
      activity: json['activityName'] as String,
      activityId: json['activityId'] as num,
      moduleId: json['moduleId'] as num,
      moduleName: json['moduleName'] as String,
    );

Map<String, dynamic> _$$_ActivityDataToJson(_$_ActivityData instance) =>
    <String, dynamic>{
      'activityName': instance.activity,
      'activityId': instance.activityId,
      'moduleId': instance.moduleId,
      'moduleName': instance.moduleName,
    };
