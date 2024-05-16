// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resource_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResourceModel _$ResourceModelFromJson(Map<String, dynamic> json) {
  return _ResourceModel.fromJson(json);
}

/// @nodoc
mixin _$ResourceModel {
  List<ResourceData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceModelCopyWith<ResourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceModelCopyWith<$Res> {
  factory $ResourceModelCopyWith(
          ResourceModel value, $Res Function(ResourceModel) then) =
      _$ResourceModelCopyWithImpl<$Res, ResourceModel>;
  @useResult
  $Res call({List<ResourceData> data});
}

/// @nodoc
class _$ResourceModelCopyWithImpl<$Res, $Val extends ResourceModel>
    implements $ResourceModelCopyWith<$Res> {
  _$ResourceModelCopyWithImpl(this._value, this._then);

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
              as List<ResourceData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResourceModelCopyWith<$Res>
    implements $ResourceModelCopyWith<$Res> {
  factory _$$_ResourceModelCopyWith(
          _$_ResourceModel value, $Res Function(_$_ResourceModel) then) =
      __$$_ResourceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResourceData> data});
}

/// @nodoc
class __$$_ResourceModelCopyWithImpl<$Res>
    extends _$ResourceModelCopyWithImpl<$Res, _$_ResourceModel>
    implements _$$_ResourceModelCopyWith<$Res> {
  __$$_ResourceModelCopyWithImpl(
      _$_ResourceModel _value, $Res Function(_$_ResourceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ResourceModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ResourceData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResourceModel implements _ResourceModel {
  const _$_ResourceModel({final List<ResourceData> data = const []})
      : _data = data;

  factory _$_ResourceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResourceModelFromJson(json);

  final List<ResourceData> _data;
  @override
  @JsonKey()
  List<ResourceData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ResourceModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResourceModel &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResourceModelCopyWith<_$_ResourceModel> get copyWith =>
      __$$_ResourceModelCopyWithImpl<_$_ResourceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResourceModelToJson(
      this,
    );
  }
}

abstract class _ResourceModel implements ResourceModel {
  const factory _ResourceModel({final List<ResourceData> data}) =
      _$_ResourceModel;

  factory _ResourceModel.fromJson(Map<String, dynamic> json) =
      _$_ResourceModel.fromJson;

  @override
  List<ResourceData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ResourceModelCopyWith<_$_ResourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ResourceData _$ResourceDataFromJson(Map<String, dynamic> json) {
  return _ResourceData.fromJson(json);
}

/// @nodoc
mixin _$ResourceData {
  @JsonKey(name: 'ModuleName')
  String get resource => throw _privateConstructorUsedError;
  @JsonKey(name: 'ModuleId')
  num get resourceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResourceDataCopyWith<ResourceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResourceDataCopyWith<$Res> {
  factory $ResourceDataCopyWith(
          ResourceData value, $Res Function(ResourceData) then) =
      _$ResourceDataCopyWithImpl<$Res, ResourceData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ModuleName') String resource,
      @JsonKey(name: 'ModuleId') num resourceId});
}

/// @nodoc
class _$ResourceDataCopyWithImpl<$Res, $Val extends ResourceData>
    implements $ResourceDataCopyWith<$Res> {
  _$ResourceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resource = null,
    Object? resourceId = null,
  }) {
    return _then(_value.copyWith(
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as String,
      resourceId: null == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResourceDataCopyWith<$Res>
    implements $ResourceDataCopyWith<$Res> {
  factory _$$_ResourceDataCopyWith(
          _$_ResourceData value, $Res Function(_$_ResourceData) then) =
      __$$_ResourceDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ModuleName') String resource,
      @JsonKey(name: 'ModuleId') num resourceId});
}

/// @nodoc
class __$$_ResourceDataCopyWithImpl<$Res>
    extends _$ResourceDataCopyWithImpl<$Res, _$_ResourceData>
    implements _$$_ResourceDataCopyWith<$Res> {
  __$$_ResourceDataCopyWithImpl(
      _$_ResourceData _value, $Res Function(_$_ResourceData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resource = null,
    Object? resourceId = null,
  }) {
    return _then(_$_ResourceData(
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as String,
      resourceId: null == resourceId
          ? _value.resourceId
          : resourceId // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResourceData implements _ResourceData {
  const _$_ResourceData(
      {@JsonKey(name: 'ModuleName') required this.resource,
      @JsonKey(name: 'ModuleId') required this.resourceId});

  factory _$_ResourceData.fromJson(Map<String, dynamic> json) =>
      _$$_ResourceDataFromJson(json);

  @override
  @JsonKey(name: 'ModuleName')
  final String resource;
  @override
  @JsonKey(name: 'ModuleId')
  final num resourceId;

  @override
  String toString() {
    return 'ResourceData(resource: $resource, resourceId: $resourceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResourceData &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.resourceId, resourceId) ||
                other.resourceId == resourceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resource, resourceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResourceDataCopyWith<_$_ResourceData> get copyWith =>
      __$$_ResourceDataCopyWithImpl<_$_ResourceData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResourceDataToJson(
      this,
    );
  }
}

abstract class _ResourceData implements ResourceData {
  const factory _ResourceData(
          {@JsonKey(name: 'ModuleName') required final String resource,
          @JsonKey(name: 'ModuleId') required final num resourceId}) =
      _$_ResourceData;

  factory _ResourceData.fromJson(Map<String, dynamic> json) =
      _$_ResourceData.fromJson;

  @override
  @JsonKey(name: 'ModuleName')
  String get resource;
  @override
  @JsonKey(name: 'ModuleId')
  num get resourceId;
  @override
  @JsonKey(ignore: true)
  _$$_ResourceDataCopyWith<_$_ResourceData> get copyWith =>
      throw _privateConstructorUsedError;
}
