// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResourceModel _$$_ResourceModelFromJson(Map<String, dynamic> json) =>
    _$_ResourceModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ResourceData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ResourceModelToJson(_$_ResourceModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_ResourceData _$$_ResourceDataFromJson(Map<String, dynamic> json) =>
    _$_ResourceData(
      resource: json['ModuleName'] as String,
      resourceId: json['ModuleId'] as num,
    );

Map<String, dynamic> _$$_ResourceDataToJson(_$_ResourceData instance) =>
    <String, dynamic>{
      'ModuleName': instance.resource,
      'ModuleId': instance.resourceId,
    };
