// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getActivity,
    required TResult Function(String activity, List<num> moduleId) addActivity,
    required TResult Function(String activity, num moduleId, num activityid)
        editActivity,
    required TResult Function(num activityid) deleteActivity,
    required TResult Function(String activity) searchActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getActivity,
    TResult? Function(String activity, List<num> moduleId)? addActivity,
    TResult? Function(String activity, num moduleId, num activityid)?
        editActivity,
    TResult? Function(num activityid)? deleteActivity,
    TResult? Function(String activity)? searchActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getActivity,
    TResult Function(String activity, List<num> moduleId)? addActivity,
    TResult Function(String activity, num moduleId, num activityid)?
        editActivity,
    TResult Function(num activityid)? deleteActivity,
    TResult Function(String activity)? searchActivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetActivity value) getActivity,
    required TResult Function(_AddActivity value) addActivity,
    required TResult Function(_EditActivity value) editActivity,
    required TResult Function(_DeleteActivity value) deleteActivity,
    required TResult Function(_SearchActivity value) searchActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetActivity value)? getActivity,
    TResult? Function(_AddActivity value)? addActivity,
    TResult? Function(_EditActivity value)? editActivity,
    TResult? Function(_DeleteActivity value)? deleteActivity,
    TResult? Function(_SearchActivity value)? searchActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetActivity value)? getActivity,
    TResult Function(_AddActivity value)? addActivity,
    TResult Function(_EditActivity value)? editActivity,
    TResult Function(_DeleteActivity value)? deleteActivity,
    TResult Function(_SearchActivity value)? searchActivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityEventCopyWith<$Res> {
  factory $ActivityEventCopyWith(
          ActivityEvent value, $Res Function(ActivityEvent) then) =
      _$ActivityEventCopyWithImpl<$Res, ActivityEvent>;
}

/// @nodoc
class _$ActivityEventCopyWithImpl<$Res, $Val extends ActivityEvent>
    implements $ActivityEventCopyWith<$Res> {
  _$ActivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetActivityCopyWith<$Res> {
  factory _$$_GetActivityCopyWith(
          _$_GetActivity value, $Res Function(_$_GetActivity) then) =
      __$$_GetActivityCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetActivityCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$_GetActivity>
    implements _$$_GetActivityCopyWith<$Res> {
  __$$_GetActivityCopyWithImpl(
      _$_GetActivity _value, $Res Function(_$_GetActivity) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetActivity implements _GetActivity {
  const _$_GetActivity();

  @override
  String toString() {
    return 'ActivityEvent.getActivity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetActivity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getActivity,
    required TResult Function(String activity, List<num> moduleId) addActivity,
    required TResult Function(String activity, num moduleId, num activityid)
        editActivity,
    required TResult Function(num activityid) deleteActivity,
    required TResult Function(String activity) searchActivity,
  }) {
    return getActivity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getActivity,
    TResult? Function(String activity, List<num> moduleId)? addActivity,
    TResult? Function(String activity, num moduleId, num activityid)?
        editActivity,
    TResult? Function(num activityid)? deleteActivity,
    TResult? Function(String activity)? searchActivity,
  }) {
    return getActivity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getActivity,
    TResult Function(String activity, List<num> moduleId)? addActivity,
    TResult Function(String activity, num moduleId, num activityid)?
        editActivity,
    TResult Function(num activityid)? deleteActivity,
    TResult Function(String activity)? searchActivity,
    required TResult orElse(),
  }) {
    if (getActivity != null) {
      return getActivity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetActivity value) getActivity,
    required TResult Function(_AddActivity value) addActivity,
    required TResult Function(_EditActivity value) editActivity,
    required TResult Function(_DeleteActivity value) deleteActivity,
    required TResult Function(_SearchActivity value) searchActivity,
  }) {
    return getActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetActivity value)? getActivity,
    TResult? Function(_AddActivity value)? addActivity,
    TResult? Function(_EditActivity value)? editActivity,
    TResult? Function(_DeleteActivity value)? deleteActivity,
    TResult? Function(_SearchActivity value)? searchActivity,
  }) {
    return getActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetActivity value)? getActivity,
    TResult Function(_AddActivity value)? addActivity,
    TResult Function(_EditActivity value)? editActivity,
    TResult Function(_DeleteActivity value)? deleteActivity,
    TResult Function(_SearchActivity value)? searchActivity,
    required TResult orElse(),
  }) {
    if (getActivity != null) {
      return getActivity(this);
    }
    return orElse();
  }
}

abstract class _GetActivity implements ActivityEvent {
  const factory _GetActivity() = _$_GetActivity;
}

/// @nodoc
abstract class _$$_AddActivityCopyWith<$Res> {
  factory _$$_AddActivityCopyWith(
          _$_AddActivity value, $Res Function(_$_AddActivity) then) =
      __$$_AddActivityCopyWithImpl<$Res>;
  @useResult
  $Res call({String activity, List<num> moduleId});
}

/// @nodoc
class __$$_AddActivityCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$_AddActivity>
    implements _$$_AddActivityCopyWith<$Res> {
  __$$_AddActivityCopyWithImpl(
      _$_AddActivity _value, $Res Function(_$_AddActivity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activity = null,
    Object? moduleId = null,
  }) {
    return _then(_$_AddActivity(
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      moduleId: null == moduleId
          ? _value._moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ));
  }
}

/// @nodoc

class _$_AddActivity implements _AddActivity {
  const _$_AddActivity(
      {required this.activity, required final List<num> moduleId})
      : _moduleId = moduleId;

  @override
  final String activity;
  final List<num> _moduleId;
  @override
  List<num> get moduleId {
    if (_moduleId is EqualUnmodifiableListView) return _moduleId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moduleId);
  }

  @override
  String toString() {
    return 'ActivityEvent.addActivity(activity: $activity, moduleId: $moduleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddActivity &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            const DeepCollectionEquality().equals(other._moduleId, _moduleId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, activity, const DeepCollectionEquality().hash(_moduleId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddActivityCopyWith<_$_AddActivity> get copyWith =>
      __$$_AddActivityCopyWithImpl<_$_AddActivity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getActivity,
    required TResult Function(String activity, List<num> moduleId) addActivity,
    required TResult Function(String activity, num moduleId, num activityid)
        editActivity,
    required TResult Function(num activityid) deleteActivity,
    required TResult Function(String activity) searchActivity,
  }) {
    return addActivity(activity, moduleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getActivity,
    TResult? Function(String activity, List<num> moduleId)? addActivity,
    TResult? Function(String activity, num moduleId, num activityid)?
        editActivity,
    TResult? Function(num activityid)? deleteActivity,
    TResult? Function(String activity)? searchActivity,
  }) {
    return addActivity?.call(activity, moduleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getActivity,
    TResult Function(String activity, List<num> moduleId)? addActivity,
    TResult Function(String activity, num moduleId, num activityid)?
        editActivity,
    TResult Function(num activityid)? deleteActivity,
    TResult Function(String activity)? searchActivity,
    required TResult orElse(),
  }) {
    if (addActivity != null) {
      return addActivity(activity, moduleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetActivity value) getActivity,
    required TResult Function(_AddActivity value) addActivity,
    required TResult Function(_EditActivity value) editActivity,
    required TResult Function(_DeleteActivity value) deleteActivity,
    required TResult Function(_SearchActivity value) searchActivity,
  }) {
    return addActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetActivity value)? getActivity,
    TResult? Function(_AddActivity value)? addActivity,
    TResult? Function(_EditActivity value)? editActivity,
    TResult? Function(_DeleteActivity value)? deleteActivity,
    TResult? Function(_SearchActivity value)? searchActivity,
  }) {
    return addActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetActivity value)? getActivity,
    TResult Function(_AddActivity value)? addActivity,
    TResult Function(_EditActivity value)? editActivity,
    TResult Function(_DeleteActivity value)? deleteActivity,
    TResult Function(_SearchActivity value)? searchActivity,
    required TResult orElse(),
  }) {
    if (addActivity != null) {
      return addActivity(this);
    }
    return orElse();
  }
}

abstract class _AddActivity implements ActivityEvent {
  const factory _AddActivity(
      {required final String activity,
      required final List<num> moduleId}) = _$_AddActivity;

  String get activity;
  List<num> get moduleId;
  @JsonKey(ignore: true)
  _$$_AddActivityCopyWith<_$_AddActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditActivityCopyWith<$Res> {
  factory _$$_EditActivityCopyWith(
          _$_EditActivity value, $Res Function(_$_EditActivity) then) =
      __$$_EditActivityCopyWithImpl<$Res>;
  @useResult
  $Res call({String activity, num moduleId, num activityid});
}

/// @nodoc
class __$$_EditActivityCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$_EditActivity>
    implements _$$_EditActivityCopyWith<$Res> {
  __$$_EditActivityCopyWithImpl(
      _$_EditActivity _value, $Res Function(_$_EditActivity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activity = null,
    Object? moduleId = null,
    Object? activityid = null,
  }) {
    return _then(_$_EditActivity(
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
      moduleId: null == moduleId
          ? _value.moduleId
          : moduleId // ignore: cast_nullable_to_non_nullable
              as num,
      activityid: null == activityid
          ? _value.activityid
          : activityid // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_EditActivity implements _EditActivity {
  const _$_EditActivity(
      {required this.activity,
      required this.moduleId,
      required this.activityid});

  @override
  final String activity;
  @override
  final num moduleId;
  @override
  final num activityid;

  @override
  String toString() {
    return 'ActivityEvent.editActivity(activity: $activity, moduleId: $moduleId, activityid: $activityid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditActivity &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.moduleId, moduleId) ||
                other.moduleId == moduleId) &&
            (identical(other.activityid, activityid) ||
                other.activityid == activityid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activity, moduleId, activityid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditActivityCopyWith<_$_EditActivity> get copyWith =>
      __$$_EditActivityCopyWithImpl<_$_EditActivity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getActivity,
    required TResult Function(String activity, List<num> moduleId) addActivity,
    required TResult Function(String activity, num moduleId, num activityid)
        editActivity,
    required TResult Function(num activityid) deleteActivity,
    required TResult Function(String activity) searchActivity,
  }) {
    return editActivity(activity, moduleId, activityid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getActivity,
    TResult? Function(String activity, List<num> moduleId)? addActivity,
    TResult? Function(String activity, num moduleId, num activityid)?
        editActivity,
    TResult? Function(num activityid)? deleteActivity,
    TResult? Function(String activity)? searchActivity,
  }) {
    return editActivity?.call(activity, moduleId, activityid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getActivity,
    TResult Function(String activity, List<num> moduleId)? addActivity,
    TResult Function(String activity, num moduleId, num activityid)?
        editActivity,
    TResult Function(num activityid)? deleteActivity,
    TResult Function(String activity)? searchActivity,
    required TResult orElse(),
  }) {
    if (editActivity != null) {
      return editActivity(activity, moduleId, activityid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetActivity value) getActivity,
    required TResult Function(_AddActivity value) addActivity,
    required TResult Function(_EditActivity value) editActivity,
    required TResult Function(_DeleteActivity value) deleteActivity,
    required TResult Function(_SearchActivity value) searchActivity,
  }) {
    return editActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetActivity value)? getActivity,
    TResult? Function(_AddActivity value)? addActivity,
    TResult? Function(_EditActivity value)? editActivity,
    TResult? Function(_DeleteActivity value)? deleteActivity,
    TResult? Function(_SearchActivity value)? searchActivity,
  }) {
    return editActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetActivity value)? getActivity,
    TResult Function(_AddActivity value)? addActivity,
    TResult Function(_EditActivity value)? editActivity,
    TResult Function(_DeleteActivity value)? deleteActivity,
    TResult Function(_SearchActivity value)? searchActivity,
    required TResult orElse(),
  }) {
    if (editActivity != null) {
      return editActivity(this);
    }
    return orElse();
  }
}

abstract class _EditActivity implements ActivityEvent {
  const factory _EditActivity(
      {required final String activity,
      required final num moduleId,
      required final num activityid}) = _$_EditActivity;

  String get activity;
  num get moduleId;
  num get activityid;
  @JsonKey(ignore: true)
  _$$_EditActivityCopyWith<_$_EditActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteActivityCopyWith<$Res> {
  factory _$$_DeleteActivityCopyWith(
          _$_DeleteActivity value, $Res Function(_$_DeleteActivity) then) =
      __$$_DeleteActivityCopyWithImpl<$Res>;
  @useResult
  $Res call({num activityid});
}

/// @nodoc
class __$$_DeleteActivityCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$_DeleteActivity>
    implements _$$_DeleteActivityCopyWith<$Res> {
  __$$_DeleteActivityCopyWithImpl(
      _$_DeleteActivity _value, $Res Function(_$_DeleteActivity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityid = null,
  }) {
    return _then(_$_DeleteActivity(
      activityid: null == activityid
          ? _value.activityid
          : activityid // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc

class _$_DeleteActivity implements _DeleteActivity {
  const _$_DeleteActivity({required this.activityid});

  @override
  final num activityid;

  @override
  String toString() {
    return 'ActivityEvent.deleteActivity(activityid: $activityid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteActivity &&
            (identical(other.activityid, activityid) ||
                other.activityid == activityid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activityid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteActivityCopyWith<_$_DeleteActivity> get copyWith =>
      __$$_DeleteActivityCopyWithImpl<_$_DeleteActivity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getActivity,
    required TResult Function(String activity, List<num> moduleId) addActivity,
    required TResult Function(String activity, num moduleId, num activityid)
        editActivity,
    required TResult Function(num activityid) deleteActivity,
    required TResult Function(String activity) searchActivity,
  }) {
    return deleteActivity(activityid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getActivity,
    TResult? Function(String activity, List<num> moduleId)? addActivity,
    TResult? Function(String activity, num moduleId, num activityid)?
        editActivity,
    TResult? Function(num activityid)? deleteActivity,
    TResult? Function(String activity)? searchActivity,
  }) {
    return deleteActivity?.call(activityid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getActivity,
    TResult Function(String activity, List<num> moduleId)? addActivity,
    TResult Function(String activity, num moduleId, num activityid)?
        editActivity,
    TResult Function(num activityid)? deleteActivity,
    TResult Function(String activity)? searchActivity,
    required TResult orElse(),
  }) {
    if (deleteActivity != null) {
      return deleteActivity(activityid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetActivity value) getActivity,
    required TResult Function(_AddActivity value) addActivity,
    required TResult Function(_EditActivity value) editActivity,
    required TResult Function(_DeleteActivity value) deleteActivity,
    required TResult Function(_SearchActivity value) searchActivity,
  }) {
    return deleteActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetActivity value)? getActivity,
    TResult? Function(_AddActivity value)? addActivity,
    TResult? Function(_EditActivity value)? editActivity,
    TResult? Function(_DeleteActivity value)? deleteActivity,
    TResult? Function(_SearchActivity value)? searchActivity,
  }) {
    return deleteActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetActivity value)? getActivity,
    TResult Function(_AddActivity value)? addActivity,
    TResult Function(_EditActivity value)? editActivity,
    TResult Function(_DeleteActivity value)? deleteActivity,
    TResult Function(_SearchActivity value)? searchActivity,
    required TResult orElse(),
  }) {
    if (deleteActivity != null) {
      return deleteActivity(this);
    }
    return orElse();
  }
}

abstract class _DeleteActivity implements ActivityEvent {
  const factory _DeleteActivity({required final num activityid}) =
      _$_DeleteActivity;

  num get activityid;
  @JsonKey(ignore: true)
  _$$_DeleteActivityCopyWith<_$_DeleteActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchActivityCopyWith<$Res> {
  factory _$$_SearchActivityCopyWith(
          _$_SearchActivity value, $Res Function(_$_SearchActivity) then) =
      __$$_SearchActivityCopyWithImpl<$Res>;
  @useResult
  $Res call({String activity});
}

/// @nodoc
class __$$_SearchActivityCopyWithImpl<$Res>
    extends _$ActivityEventCopyWithImpl<$Res, _$_SearchActivity>
    implements _$$_SearchActivityCopyWith<$Res> {
  __$$_SearchActivityCopyWithImpl(
      _$_SearchActivity _value, $Res Function(_$_SearchActivity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activity = null,
  }) {
    return _then(_$_SearchActivity(
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchActivity implements _SearchActivity {
  const _$_SearchActivity({required this.activity});

  @override
  final String activity;

  @override
  String toString() {
    return 'ActivityEvent.searchActivity(activity: $activity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchActivity &&
            (identical(other.activity, activity) ||
                other.activity == activity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchActivityCopyWith<_$_SearchActivity> get copyWith =>
      __$$_SearchActivityCopyWithImpl<_$_SearchActivity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getActivity,
    required TResult Function(String activity, List<num> moduleId) addActivity,
    required TResult Function(String activity, num moduleId, num activityid)
        editActivity,
    required TResult Function(num activityid) deleteActivity,
    required TResult Function(String activity) searchActivity,
  }) {
    return searchActivity(activity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getActivity,
    TResult? Function(String activity, List<num> moduleId)? addActivity,
    TResult? Function(String activity, num moduleId, num activityid)?
        editActivity,
    TResult? Function(num activityid)? deleteActivity,
    TResult? Function(String activity)? searchActivity,
  }) {
    return searchActivity?.call(activity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getActivity,
    TResult Function(String activity, List<num> moduleId)? addActivity,
    TResult Function(String activity, num moduleId, num activityid)?
        editActivity,
    TResult Function(num activityid)? deleteActivity,
    TResult Function(String activity)? searchActivity,
    required TResult orElse(),
  }) {
    if (searchActivity != null) {
      return searchActivity(activity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetActivity value) getActivity,
    required TResult Function(_AddActivity value) addActivity,
    required TResult Function(_EditActivity value) editActivity,
    required TResult Function(_DeleteActivity value) deleteActivity,
    required TResult Function(_SearchActivity value) searchActivity,
  }) {
    return searchActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetActivity value)? getActivity,
    TResult? Function(_AddActivity value)? addActivity,
    TResult? Function(_EditActivity value)? editActivity,
    TResult? Function(_DeleteActivity value)? deleteActivity,
    TResult? Function(_SearchActivity value)? searchActivity,
  }) {
    return searchActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetActivity value)? getActivity,
    TResult Function(_AddActivity value)? addActivity,
    TResult Function(_EditActivity value)? editActivity,
    TResult Function(_DeleteActivity value)? deleteActivity,
    TResult Function(_SearchActivity value)? searchActivity,
    required TResult orElse(),
  }) {
    if (searchActivity != null) {
      return searchActivity(this);
    }
    return orElse();
  }
}

abstract class _SearchActivity implements ActivityEvent {
  const factory _SearchActivity({required final String activity}) =
      _$_SearchActivity;

  String get activity;
  @JsonKey(ignore: true)
  _$$_SearchActivityCopyWith<_$_SearchActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActivityState {
  bool get isloading => throw _privateConstructorUsedError;
  Option<Either<ActivityFailures, ActivityModel>> get activityModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivityStateCopyWith<ActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityStateCopyWith<$Res> {
  factory $ActivityStateCopyWith(
          ActivityState value, $Res Function(ActivityState) then) =
      _$ActivityStateCopyWithImpl<$Res, ActivityState>;
  @useResult
  $Res call(
      {bool isloading,
      Option<Either<ActivityFailures, ActivityModel>> activityModel});
}

/// @nodoc
class _$ActivityStateCopyWithImpl<$Res, $Val extends ActivityState>
    implements $ActivityStateCopyWith<$Res> {
  _$ActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? activityModel = null,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      activityModel: null == activityModel
          ? _value.activityModel
          : activityModel // ignore: cast_nullable_to_non_nullable
              as Option<Either<ActivityFailures, ActivityModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActivityStateCopyWith<$Res>
    implements $ActivityStateCopyWith<$Res> {
  factory _$$_ActivityStateCopyWith(
          _$_ActivityState value, $Res Function(_$_ActivityState) then) =
      __$$_ActivityStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading,
      Option<Either<ActivityFailures, ActivityModel>> activityModel});
}

/// @nodoc
class __$$_ActivityStateCopyWithImpl<$Res>
    extends _$ActivityStateCopyWithImpl<$Res, _$_ActivityState>
    implements _$$_ActivityStateCopyWith<$Res> {
  __$$_ActivityStateCopyWithImpl(
      _$_ActivityState _value, $Res Function(_$_ActivityState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? activityModel = null,
  }) {
    return _then(_$_ActivityState(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      activityModel: null == activityModel
          ? _value.activityModel
          : activityModel // ignore: cast_nullable_to_non_nullable
              as Option<Either<ActivityFailures, ActivityModel>>,
    ));
  }
}

/// @nodoc

class _$_ActivityState implements _ActivityState {
  const _$_ActivityState(
      {required this.isloading, required this.activityModel});

  @override
  final bool isloading;
  @override
  final Option<Either<ActivityFailures, ActivityModel>> activityModel;

  @override
  String toString() {
    return 'ActivityState(isloading: $isloading, activityModel: $activityModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivityState &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.activityModel, activityModel) ||
                other.activityModel == activityModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading, activityModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActivityStateCopyWith<_$_ActivityState> get copyWith =>
      __$$_ActivityStateCopyWithImpl<_$_ActivityState>(this, _$identity);
}

abstract class _ActivityState implements ActivityState {
  const factory _ActivityState(
      {required final bool isloading,
      required final Option<Either<ActivityFailures, ActivityModel>>
          activityModel}) = _$_ActivityState;

  @override
  bool get isloading;
  @override
  Option<Either<ActivityFailures, ActivityModel>> get activityModel;
  @override
  @JsonKey(ignore: true)
  _$$_ActivityStateCopyWith<_$_ActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}
