// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'role_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoleModel _$RoleModelFromJson(Map<String, dynamic> json) {
  return _RoleModel.fromJson(json);
}

/// @nodoc
mixin _$RoleModel {
  List<RoleData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleModelCopyWith<RoleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleModelCopyWith<$Res> {
  factory $RoleModelCopyWith(RoleModel value, $Res Function(RoleModel) then) =
      _$RoleModelCopyWithImpl<$Res, RoleModel>;
  @useResult
  $Res call({List<RoleData> data});
}

/// @nodoc
class _$RoleModelCopyWithImpl<$Res, $Val extends RoleModel>
    implements $RoleModelCopyWith<$Res> {
  _$RoleModelCopyWithImpl(this._value, this._then);

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
              as List<RoleData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoleModelCopyWith<$Res> implements $RoleModelCopyWith<$Res> {
  factory _$$_RoleModelCopyWith(
          _$_RoleModel value, $Res Function(_$_RoleModel) then) =
      __$$_RoleModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RoleData> data});
}

/// @nodoc
class __$$_RoleModelCopyWithImpl<$Res>
    extends _$RoleModelCopyWithImpl<$Res, _$_RoleModel>
    implements _$$_RoleModelCopyWith<$Res> {
  __$$_RoleModelCopyWithImpl(
      _$_RoleModel _value, $Res Function(_$_RoleModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_RoleModel(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RoleData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoleModel implements _RoleModel {
  const _$_RoleModel({final List<RoleData> data = const []}) : _data = data;

  factory _$_RoleModel.fromJson(Map<String, dynamic> json) =>
      _$$_RoleModelFromJson(json);

  final List<RoleData> _data;
  @override
  @JsonKey()
  List<RoleData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'RoleModel(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoleModel &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoleModelCopyWith<_$_RoleModel> get copyWith =>
      __$$_RoleModelCopyWithImpl<_$_RoleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoleModelToJson(
      this,
    );
  }
}

abstract class _RoleModel implements RoleModel {
  const factory _RoleModel({final List<RoleData> data}) = _$_RoleModel;

  factory _RoleModel.fromJson(Map<String, dynamic> json) =
      _$_RoleModel.fromJson;

  @override
  List<RoleData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_RoleModelCopyWith<_$_RoleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RoleData _$RoleDataFromJson(Map<String, dynamic> json) {
  return _RoleData.fromJson(json);
}

/// @nodoc
mixin _$RoleData {
  @JsonKey(name: 'RoleId')
  num get roleid => throw _privateConstructorUsedError;
  @JsonKey(name: 'RoleName')
  String get rolename => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleDataCopyWith<RoleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleDataCopyWith<$Res> {
  factory $RoleDataCopyWith(RoleData value, $Res Function(RoleData) then) =
      _$RoleDataCopyWithImpl<$Res, RoleData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'RoleId') num roleid,
      @JsonKey(name: 'RoleName') String rolename});
}

/// @nodoc
class _$RoleDataCopyWithImpl<$Res, $Val extends RoleData>
    implements $RoleDataCopyWith<$Res> {
  _$RoleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleid = null,
    Object? rolename = null,
  }) {
    return _then(_value.copyWith(
      roleid: null == roleid
          ? _value.roleid
          : roleid // ignore: cast_nullable_to_non_nullable
              as num,
      rolename: null == rolename
          ? _value.rolename
          : rolename // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoleDataCopyWith<$Res> implements $RoleDataCopyWith<$Res> {
  factory _$$_RoleDataCopyWith(
          _$_RoleData value, $Res Function(_$_RoleData) then) =
      __$$_RoleDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'RoleId') num roleid,
      @JsonKey(name: 'RoleName') String rolename});
}

/// @nodoc
class __$$_RoleDataCopyWithImpl<$Res>
    extends _$RoleDataCopyWithImpl<$Res, _$_RoleData>
    implements _$$_RoleDataCopyWith<$Res> {
  __$$_RoleDataCopyWithImpl(
      _$_RoleData _value, $Res Function(_$_RoleData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roleid = null,
    Object? rolename = null,
  }) {
    return _then(_$_RoleData(
      roleid: null == roleid
          ? _value.roleid
          : roleid // ignore: cast_nullable_to_non_nullable
              as num,
      rolename: null == rolename
          ? _value.rolename
          : rolename // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RoleData implements _RoleData {
  const _$_RoleData(
      {@JsonKey(name: 'RoleId') required this.roleid,
      @JsonKey(name: 'RoleName') required this.rolename});

  factory _$_RoleData.fromJson(Map<String, dynamic> json) =>
      _$$_RoleDataFromJson(json);

  @override
  @JsonKey(name: 'RoleId')
  final num roleid;
  @override
  @JsonKey(name: 'RoleName')
  final String rolename;

  @override
  String toString() {
    return 'RoleData(roleid: $roleid, rolename: $rolename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RoleData &&
            (identical(other.roleid, roleid) || other.roleid == roleid) &&
            (identical(other.rolename, rolename) ||
                other.rolename == rolename));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roleid, rolename);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoleDataCopyWith<_$_RoleData> get copyWith =>
      __$$_RoleDataCopyWithImpl<_$_RoleData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoleDataToJson(
      this,
    );
  }
}

abstract class _RoleData implements RoleData {
  const factory _RoleData(
      {@JsonKey(name: 'RoleId') required final num roleid,
      @JsonKey(name: 'RoleName') required final String rolename}) = _$_RoleData;

  factory _RoleData.fromJson(Map<String, dynamic> json) = _$_RoleData.fromJson;

  @override
  @JsonKey(name: 'RoleId')
  num get roleid;
  @override
  @JsonKey(name: 'RoleName')
  String get rolename;
  @override
  @JsonKey(ignore: true)
  _$$_RoleDataCopyWith<_$_RoleData> get copyWith =>
      throw _privateConstructorUsedError;
}
