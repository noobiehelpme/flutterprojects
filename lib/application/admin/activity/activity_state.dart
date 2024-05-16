part of 'activity_bloc.dart';

@freezed
class ActivityState with _$ActivityState {
  const factory ActivityState(
      {required bool isloading,
      required Option<Either<ActivityFailures, ActivityModel>>
          activityModel}) = _ActivityState;
}
