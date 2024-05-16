import 'package:dartz/dartz.dart';
import 'package:gauthentication/domain/failures/activity_failure.dart';
import 'package:gauthentication/domain/models/activity_model.dart';

abstract class ActivityIRepo {
  Future<Either<ActivityFailures, ActivityModel>> getActivity(
      {required String token});
  Future<Either<ActivityFailures, ActivityModel>> addActivity(
      {required String token,
      required String activity,
      required List<num> moduleId});
  Future<Either<ActivityFailures, ActivityModel>> editActivity(
      {required String token,
      required String activity,
      required num activityid,
      required num moduleId});
  Future<Either<ActivityFailures, ActivityModel>> deleteActivity(
      {required String token, required num activityid});
  Future<Either<ActivityFailures, ActivityModel>> searchActivity(
      {required String searchName});
}
