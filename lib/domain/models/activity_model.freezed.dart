// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActivityModel _$ActivityModelFromJson(Map<String, dynamic> json) {
  return _ActivityModel.fromJson(json);
}

/// @nodoc
mixin _$ActivityModel {
  List<ActivityData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityModelCopyWith<ActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityModelCopyWith<$Res> {
  factory $ActivityModelCopyWith(
          ActivityModel value, $Res Function(ActivityModel) then) =
      _$ActivityModelCopyWithImpl<$Res, ActivityModel>;
  @useResult
  $Res call({List<ActivityData> data});
}

/// @nodoc
class _$ActivityModelCopyWithImpl<$Res, $Val extends ActivityModel>
    implements $ActivityModelCopyWith<$Res> {
  _$ActivityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ActivityData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActivityModelCopyWith<$Res>
    implements $ActivityModelCopyWith<$Res> {
  factory _$$_ActivityModelCopyWith(
          _$_ActivityModel value, $Res Function(_$_ActivityModel) then) =
      __$$_ActivityModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ActivityData> data});
}

/// @nodoc
class __$$_ActivityModelCopyWithImpl<$Res>
    extends _$ActivityModelCopyWithImpl<$Res, _$_ActivityModel>
    implements _$$_ActivityModelCopyWith<$Res> {
  __$$_ActivityModelCopyWithImpl(
      _$_ActivityModel _value, $Res Function(_$_ActivityModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ActivityModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ActivityData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActivityModel implements _ActivityModel {
  const _$_ActivityModel({final List<ActivityData> data = const []})
      : _data = data;

  factory _$_ActivityModel.fromJson(Map<String, dynamic> json) =>
      _$$_ActivityModelFromJson(json);

  final List<ActivityData> _data;
  @override
  @JsonKey()
  List<ActivityData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ActivityModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivityModel &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActivityModelCopyWith<_$_ActivityModel> get copyWith =>
      __$$_ActivityModelCopyWithImpl<_$_ActivityModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivityModelToJson(
      this,
    );
  }
}

abstract class _ActivityModel implements ActivityModel {
  const factory _ActivityModel({final List<ActivityData> data}) =
      _$_ActivityModel;

  factory _ActivityModel.fromJson(Map<String, dynamic> json) =
      _$_ActivityModel.fromJson;

  @override
  List<ActivityData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityModelCopyWith<_$_ActivityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivityData _$ActivityDataFromJson(Map<String, dynamic> json) {
  return _ActivityData.fromJson(json);
}

/// @nodoc
mixin _$ActivityData {
  @JsonKey(name: 'activityName')
  String get activity => throw _privateConstructorUsedError;
  num get activityId => throw _privateConstructorUsedError;
  num get moduleId => throw _privateConstructorUsedError;
  String get moduleName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityDataCopyWith<ActivityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityDataCopyWith<$Res> {
  factory $ActivityDataCopyWith(
          ActivityData value, $Res Function(ActivityData) then) =
      _$ActivityDataCopyWithImpl<$Res, ActivityData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'activityName') String activity,
      num activityId,
      num moduleId,
      String moduleName});
}

/// @nodoc
class _$ActivityDataCopyWithImpl<$Res, $Val extends ActivityData>
    implements $ActivityDataCopyWith<$Res> {
  _$ActivityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activity = null,
    Object? activityId = null,
    Object? moduleId = null,
    Object? moduleName = null,
  }) {
    return _then(_value.copyWith(
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as num,
      moduleId: null == moduleId
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as num,
      moduleName: null == moduleName
          ? _value.moduleName
          : moduleName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActivityDataCopyWith<$Res>
    implements $ActivityDataCopyWith<$Res> {
  factory _$$_ActivityDataCopyWith(
          _$_ActivityData value, $Res Function(_$_ActivityData) then) =
      __$$_ActivityDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'activityName') String activity,
      num activityId,
      num moduleId,
      String moduleName});
}

/// @nodoc
class __$$_ActivityDataCopyWithImpl<$Res>
    extends _$ActivityDataCopyWithImpl<$Res, _$_ActivityData>
    implements _$$_ActivityDataCopyWith<$Res> {
  __$$_ActivityDataCopyWithImpl(
      _$_ActivityData _value, $Res Function(_$_ActivityData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activity = null,
    Object? activityId = null,
    Object? moduleId = null,
    Object? moduleName = null,
  }) {
    return _then(_$_ActivityData(
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      activityId: null == activityId
          ? _value.activityId
          : activityId // ignore: cast_nullable_to_non_nullable
              as num,
      moduleId: null == moduleId
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as num,
      moduleName: null == moduleName
          ? _value.moduleName
          : moduleName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActivityData implements _ActivityData {
  const _$_ActivityData(
      {@JsonKey(name: 'activityName') required this.activity,
      required this.activityId,
      required this.moduleId,
      required this.moduleName});

  factory _$_ActivityData.fromJson(Map<String, dynamic> json) =>
      _$$_ActivityDataFromJson(json);

  @override
  @JsonKey(name: 'activityName')
  final String activity;
  @override
  final num activityId;
  @override
  final num moduleId;
  @override
  final String moduleName;

  @override
  String toString() {
    return 'ActivityData(activity: $activity, activityId: $activityId, moduleId: $moduleId, moduleName: $moduleName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivityData &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.activityId, activityId) ||
                other.activityId == activityId) &&
            (identical(other.moduleId, moduleId) ||
                other.moduleId == moduleId) &&
            (identical(other.moduleName, moduleName) ||
                other.moduleName == moduleName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, activity, activityId, moduleId, moduleName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActivityDataCopyWith<_$_ActivityData> get copyWith =>
      __$$_ActivityDataCopyWithImpl<_$_ActivityData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivityDataToJson(
      this,
    );
  }
}

abstract class _ActivityData implements ActivityData {
  const factory _ActivityData(
      {@JsonKey(name: 'activityName') required final String activity,
      required final num activityId,
      required final num moduleId,
      required final String moduleName}) = _$_ActivityData;

  factory _ActivityData.fromJson(Map<String, dynamic> json) =
      _$_ActivityData.fromJson;

  @override
  @JsonKey(name: 'activityName')
  String get activity;
  @override
  num get activityId;
  @override
  num get moduleId;
  @override
  String get moduleName;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityDataCopyWith<_$_ActivityData> get copyWith =>
      throw _privateConstructorUsedError;
}
