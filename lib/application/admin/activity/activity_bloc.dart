import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gauthentication/core/services/session_services.dart';
import 'package:gauthentication/domain/failures/activity_failure.dart';
import 'package:gauthentication/domain/models/activity_model.dart';
import 'package:gauthentication/domain/repository/activity_irepo.dart';
import 'package:injectable/injectable.dart';

part 'activity_event.dart';
part 'activity_state.dart';
part 'activity_bloc.freezed.dart';

@injectable
class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  final ActivityIRepo activityIRepo;
  ActivityBloc(this.activityIRepo)
      : super(ActivityState(isloading: false, activityModel: none())) {
    on<_GetActivity>((event, emit) async {
      emit(state.copyWith(isloading: true, activityModel: none()));
      final activities = await activityIRepo.getActivity(
          token: SessionServices.reteiveSession());
      emit(state.copyWith(isloading: false, activityModel: some(activities)));
    });
    on<_DeleteActivity>((event, emit) async {
      emit(state.copyWith(isloading: true, activityModel: none()));
      final activities = await activityIRepo.deleteActivity(
          token: SessionServices.reteiveSession(),
          activityid: event.activityid);
      emit(state.copyWith(isloading: false, activityModel: some(activities)));
    });

    on<_SearchActivity>((event, emit) async {
      final List<ActivityData> response = state.activityModel.fold(
          () => [],
          (a) => a.fold((l) => [], (r) {
                return r.data
                    .where((e) => e.activity
                        .toLowerCase()
                        .contains(event.activity.toLowerCase()))
                    .toList();
              }));
      emit(state.copyWith(
          isloading: false,
          activityModel: some(right(ActivityModel(data: response)))));
    });
    on<_AddActivity>((event, emit) async {
      emit(state.copyWith(isloading: true, activityModel: none()));
      final activities = await activityIRepo.addActivity(
          token: SessionServices.reteiveSession(),
          activity: event.activity,
          moduleId: event.moduleId);
      emit(state.copyWith(isloading: false, activityModel: some(activities)));
    });
    on<_EditActivity>((event, emit) async {
      emit(state.copyWith(isloading: true, activityModel: none()));
      final activities = await activityIRepo.editActivity(
          activity: event.activity,
          activityid: event.activityid,
          moduleId: event.moduleId,
          token: SessionServices.reteiveSession());
      emit(state.copyWith(isloading: false, activityModel: some(activities)));
    });
  }
}
