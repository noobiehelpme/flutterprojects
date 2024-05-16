import 'package:freezed_annotation/freezed_annotation.dart';
part 'resource_model.freezed.dart';
part 'resource_model.g.dart';

@freezed
class ResourceModel with _$ResourceModel {
  const factory ResourceModel({@Default([]) List<ResourceData> data}) =
      _ResourceModel;
  factory ResourceModel.fromJson(Map<String, dynamic> json) =>
      _$ResourceModelFromJson(json);
}

@freezed
class ResourceData with _$ResourceData {
  const factory ResourceData({
    @JsonKey(name: 'ModuleName') required String resource,
    @JsonKey(name: 'ModuleId') required num resourceId,
  }) = _ResourceData;

  factory ResourceData.fromJson(Map<String, dynamic> json) =>
      _$ResourceDataFromJson(json);
}
  