import 'package:freezed_annotation/freezed_annotation.dart';
part 'role_model.freezed.dart';
part 'role_model.g.dart';

@freezed
class RoleModel with _$RoleModel {
  const factory RoleModel({@Default([]) List<RoleData> data}) = _RoleModel;

  factory RoleModel.fromJson(Map<String, dynamic> json) =>
      _$RoleModelFromJson(json);
}

@freezed
class RoleData with _$RoleData {
  const factory RoleData({
    @JsonKey(name: 'RoleId') required num roleid,
    @JsonKey(name: 'RoleName') required String rolename,
  }) = _RoleData;

  factory RoleData.fromJson(Map<String, dynamic> json) =>
      _$RoleDataFromJson(json);
}
