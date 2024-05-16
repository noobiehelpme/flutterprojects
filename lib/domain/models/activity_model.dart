import 'package:freezed_annotation/freezed_annotation.dart';
part 'activity_model.freezed.dart';
part 'activity_model.g.dart';

@freezed
class ActivityModel with _$ActivityModel {
  const factory ActivityModel({@Default([]) List<ActivityData> data}) =
      _ActivityModel;

  factory ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$ActivityModelFromJson(json);
}

@freezed
class ActivityData with _$ActivityData {
  const factory ActivityData({
    @JsonKey(name: 'activityName') required String activity,
    required num activityId,
    required num moduleId,
    required String moduleName,
  }) = _ActivityData;

  factory ActivityData.fromJson(Map<String, dynamic> json) =>
      _$ActivityDataFromJson(json);
}
