import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gauthentication/core/api/uris.dart';
import 'package:gauthentication/core/services/encryption_services.dart';
import 'package:gauthentication/core/services/session_services.dart';
import 'package:gauthentication/domain/models/activity_model.dart';
import 'package:gauthentication/domain/failures/activity_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:gauthentication/domain/repository/activity_irepo.dart';
import 'package:gauthentication/domain/repository/authentication_irepo.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ActivityIRepo)
@injectable
class ActivityRepo extends ActivityIRepo {
  final AuthIRepo authIRepo;
  ActivityRepo(this.authIRepo);

  @override
  Future<Either<ActivityFailures, ActivityModel>> addActivity(
      {required String token,
      required String activity,
      required List<num> moduleId}) async {
    try {
      final queryParams = setRequest(
        parameters: {"ModuleId": moduleId, "Activityname": activity},
        type: "PostActivityResourses",
        jwtToken: token,
      );
      final uri = Uri.http(ApiUris.baseUrl, ApiUris.addActivity, queryParams);
      final res = await http.post(uri);
      debugPrint('add activities ${res.statusCode}');
      if (res.statusCode == 200) {
        if (isAuthorized(res.body) == true) {
          final isStored = await SessionServices.storageSession(
              token: jsonDecode(res.body)["jwtToken"]);
          return isStored
              ? right(ActivityModel.fromJson(jsonDecode(res.body)))
              : left(const ActivityFailures.unknownFailures());
        } else {
          return left(const ActivityFailures.unknownFailures());
        }
      } else if (res.statusCode == 422) {
        final generatedToken = await authIRepo.generateToken();
        return generatedToken.fold(
            (l) => left(ActivityFailures.unknownFailures(message: l.message)),
            (r) => addActivity(
                  token: r,
                  moduleId: moduleId,
                  activity: activity,
                ));
      }
      return left(const ActivityFailures.unknownFailures());
    } on SocketException {
      return left(const ActivityFailures.networkFailures());
    } catch (e) {
      debugPrint('error occured in login :- $e');
      return left(const ActivityFailures.unknownFailures());
    }
  }

  @override
  Future<Either<ActivityFailures, ActivityModel>> deleteActivity(
      {required String token, required num activityid}) async {
    try {
      final queryParams = setRequest(
        parameters: {"ActivityId": activityid},
        type: "DeleteActivitystatus",
        jwtToken: token,
      );
      final uri =
          Uri.http(ApiUris.baseUrl, ApiUris.deleteActivity, queryParams);
      final res = await http.put(uri);
      debugPrint('delete activities${res.statusCode}');
      if (res.statusCode == 200) {
        if (isAuthorized(res.body) == true) {
          final isStored = await SessionServices.storageSession(
              token: jsonDecode(res.body)["jwtToken"]);
          return isStored
              ? right(ActivityModel.fromJson(jsonDecode(res.body)))
              : left(const ActivityFailures.unknownFailures());
        } else {
          return left(const ActivityFailures.unknownFailures());
        }
      } else if (res.statusCode == 422) {
        final generatedToken = await authIRepo.generateToken();
        return generatedToken.fold(
            (l) => left(ActivityFailures.unknownFailures(message: l.message)),
            (r) => deleteActivity(token: r, activityid: activityid));
      }
      return left(const ActivityFailures.unknownFailures());
    } on SocketException {
      return left(const ActivityFailures.networkFailures());
    } catch (e) {
      debugPrint('error occured in login :- $e');
      return left(const ActivityFailures.unknownFailures());
    }
  }

  @override
  Future<Either<ActivityFailures, ActivityModel>> editActivity(
      {required String token,
      required String activity,
      required num activityid,
      required num moduleId}) async {
    try {
      final queryParams = setRequest(
        parameters: {
          "ActivityId": activityid,
          "ModuleId": moduleId,
          "ActivityName": activity
        },
        type: "PutActivityRequest",
        jwtToken: token,
      );
      final uri = Uri.http(ApiUris.baseUrl, ApiUris.editActivity, queryParams);
      final res = await http.put(uri);
      debugPrint('edit activities${res.statusCode}');
      if (res.statusCode == 200) {
        if (isAuthorized(res.body) == true) {
          final isStored = await SessionServices.storageSession(
              token: jsonDecode(res.body)["jwtToken"]);
          return isStored
              ? right(ActivityModel.fromJson(jsonDecode(res.body)))
              : left(const ActivityFailures.unknownFailures());
        } else {
          return left(const ActivityFailures.unknownFailures());
        }
      } else if (res.statusCode == 422) {
        final generatedToken = await authIRepo.generateToken();
        return generatedToken.fold(
            (l) => left(ActivityFailures.unknownFailures(message: l.message)),
            (r) => editActivity(
                  token: r,
                  activityid: activityid,
                  moduleId: moduleId,
                  activity: activity,
                ));
      }
      return left(const ActivityFailures.unknownFailures());
    } on SocketException {
      return left(const ActivityFailures.networkFailures());
    } catch (e) {
      debugPrint('error occured in login :- $e');
      return left(const ActivityFailures.unknownFailures());
    }
  }

  @override
  Future<Either<ActivityFailures, ActivityModel>> getActivity(
      {required String token}) async {
    try {
      final queryParams = setRequest(
        parameters: {},
        type: "GetActivities",
        jwtToken: token,
      );
      final uri = Uri.http(ApiUris.baseUrl, ApiUris.getActivity, queryParams);
      final res = await http.get(uri);
      debugPrint('get activities${res.statusCode}');
      if (res.statusCode == 200) {
        if (isAuthorized(res.body) == true) {
          final isStored = await SessionServices.storageSession(
              token: jsonDecode(res.body)["jwtToken"]);
          return isStored
              ? right(ActivityModel.fromJson(jsonDecode(res.body)))
              : left(const ActivityFailures.unknownFailures());
        } else {
          return left(const ActivityFailures.unknownFailures());
        }
      } else if (res.statusCode == 422) {
        final generatedToken = await authIRepo.generateToken();
        return generatedToken.fold(
            (l) => left(ActivityFailures.unknownFailures(message: l.message)),
            (r) => getActivity(
                  token: r,
                ));
      }
      return left(const ActivityFailures.unknownFailures());
    } on SocketException {
      return left(const ActivityFailures.networkFailures());
    } catch (e) {
      debugPrint('error occured in login :- $e');
      return left(const ActivityFailures.unknownFailures());
    }
  }

  @override
  Future<Either<ActivityFailures, ActivityModel>> searchActivity(
      {required String searchName}) async {
    throw UnimplementedError();
  }
}
