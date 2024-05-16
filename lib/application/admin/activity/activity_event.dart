part of 'activity_bloc.dart';

@freezed
class ActivityEvent with _$ActivityEvent {
const factory ActivityEvent.getActivity() = _GetActivity;
const factory ActivityEvent.addActivity({required String activity,required List<num> moduleId}) = _AddActivity;
const factory ActivityEvent.editActivity({required String activity,required num moduleId,required num activityid}) = _EditActivity;
const factory ActivityEvent.deleteActivity({required num activityid}) = _DeleteActivity;
const factory ActivityEvent.searchActivity({required String activity}) = _SearchActivity;
}