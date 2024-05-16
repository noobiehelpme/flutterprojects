// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RoleModel _$$_RoleModelFromJson(Map<String, dynamic> json) => _$_RoleModel(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => RoleData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RoleModelToJson(_$_RoleModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_RoleData _$$_RoleDataFromJson(Map<String, dynamic> json) => _$_RoleData(
      roleid: json['RoleId'] as num,
      rolename: json['RoleName'] as String,
    );

Map<String, dynamic> _$$_RoleDataToJson(_$_RoleData instance) =>
    <String, dynamic>{
      'RoleId': instance.roleid,
      'RoleName': instance.rolename,
    };
