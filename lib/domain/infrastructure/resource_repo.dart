import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gauthentication/core/api/uris.dart';
import 'package:gauthentication/core/services/encryption_services.dart';
import 'package:gauthentication/core/services/session_services.dart';
import 'package:gauthentication/domain/failures/resource_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:gauthentication/domain/models/resource_model.dart';
import 'package:gauthentication/domain/repository/authentication_irepo.dart';
import 'package:gauthentication/domain/repository/resource_irepo.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ResourceIRepo)
@injectable
class ResourceRepo extends ResourceIRepo {
  final AuthIRepo authIRepo;
  ResourceRepo(this.authIRepo);
  @override
  Future<Either<ResourceFailures, ResourceModel>> addResource(
      {required String token, required String resource}) async {
    debugPrint('resource :- $resource');
    try {
      final queryParams = setRequest(
        parameters: {"ModuleName": resource},
        type: "AddModules",
        jwtToken: token,
      );
      final uri = Uri.http(ApiUris.baseUrl, ApiUris.addResource, queryParams);
      final res = await http.post(uri);
      debugPrint('add resources${res.statusCode}');
      if (res.statusCode == 200) {
        if (isAuthorized(res.body) == true) {
          final isStored = await SessionServices.storageSession(
              token: jsonDecode(res.body)["jwtToken"]);
          return isStored
              ? right(ResourceModel.fromJson(jsonDecode(res.body)))
              : left(const ResourceFailures.unknownFailures());
        } else {
          return left(const ResourceFailures.unknownFailures());
        }
      } else if (res.statusCode == 422) {
        final generatedToken = await authIRepo.generateToken();
        return generatedToken.fold(
            (l) => left(ResourceFailures.unknownFailures(message: l.message)),
            (r) => addResource(token: r, resource: resource));
      }
      return left(const ResourceFailures.unknownFailures());
    } on SocketException {
      return left(const ResourceFailures.networkFailures());
    } catch (e) {
      debugPrint('error occured in login :- $e');
      return left(const ResourceFailures.unknownFailures());
    }
  }

  @override
  Future<Either<ResourceFailures, ResourceModel>> deleteResource(
      {required String token, required num resourceId}) async {
    try {
      final queryParams = setRequest(
        parameters: {"ModuleId": resourceId},
        type: "DeleteModuleRequest",
        jwtToken: token,
      );
      final uri =
          Uri.http(ApiUris.baseUrl, ApiUris.deleteResource, queryParams);
      final res = await http.put(uri);
      debugPrint('delete resources${res.statusCode}');
      if (res.statusCode == 200) {
        if (isAuthorized(res.body) == true) {
          final isStored = await SessionServices.storageSession(
              token: jsonDecode(res.body)["jwtToken"]);
          return isStored
              ? right(ResourceModel.fromJson(jsonDecode(res.body)))
              : left(const ResourceFailures.unknownFailures());
        } else {
          return left(const ResourceFailures.unknownFailures());
        }
      } else if (res.statusCode == 422) {
        final generatedToken = await authIRepo.generateToken();
        return generatedToken.fold(
            (l) => left(ResourceFailures.unknownFailures(message: l.message)),
            (r) => deleteResource(token: r, resourceId: resourceId));
      }
      return left(const ResourceFailures.unknownFailures());
    } on SocketException {
      return left(const ResourceFailures.networkFailures());
    } catch (e) {
      debugPrint('error occured in login :- $e');
      return left(const ResourceFailures.unknownFailures());
    }
  }

  @override
  Future<Either<ResourceFailures, ResourceModel>> editResource(
      {required String token,
      required String resource,
      required num resourceId}) async {
    try {
      final queryParams = setRequest(
        parameters: {"ModuleName": resource, "ModuleId": resourceId},
        type: "UpdateModuleRequest",
        jwtToken: token,
      );
      final uri = Uri.http(ApiUris.baseUrl, ApiUris.editResource, queryParams);
      final res = await http.put(uri);
      debugPrint('edit resources${res.statusCode}');
      if (res.statusCode == 200) {
        if (isAuthorized(res.body) == true) {
          final isStored = await SessionServices.storageSession(
              token: jsonDecode(res.body)["jwtToken"]);
          return isStored
              ? right(ResourceModel.fromJson(jsonDecode(res.body)))
              : left(const ResourceFailures.unknownFailures());
        } else {
          return left(const ResourceFailures.unknownFailures());
        }
      } else if (res.statusCode == 422) {
        final generatedToken = await authIRepo.generateToken();
        return generatedToken.fold(
            (l) => left(ResourceFailures.unknownFailures(message: l.message)),
            (r) => editResource(
                token: r, resource: resource, resourceId: resourceId));
      }
      return left(const ResourceFailures.unknownFailures());
    } on SocketException {
      return left(const ResourceFailures.networkFailures());
    } catch (e) {
      debugPrint('error occured in login :- $e');
      return left(const ResourceFailures.unknownFailures());
    }
  }

  @override
  Future<Either<ResourceFailures, ResourceModel>> getResources(
      {required String token}) async {
    try {
      final queryParams = setRequest(
        parameters: {},
        type: "GetModuleRequest",
        jwtToken: token,
      );
      final uri = Uri.http(ApiUris.baseUrl, ApiUris.resourceGet, queryParams);

      final res = await http.get(uri);
      debugPrint('get resources${res.statusCode}');
      if (res.statusCode == 200) {
        if (isAuthorized(res.body) == true) {
          final isStored = await SessionServices.storageSession(
              token: jsonDecode(res.body)["jwtToken"]);
          return isStored
              ? right(ResourceModel.fromJson(jsonDecode(res.body)))
              : left(const ResourceFailures.unknownFailures());
        } else {
          return left(const ResourceFailures.unknownFailures());
        }
      } else if (res.statusCode == 422) {
        final generatedToken = await authIRepo.generateToken();
        return generatedToken.fold(
            (l) => left(ResourceFailures.unknownFailures(message: l.message)),
            (r) => getResources(token: r));
      }
      return left(const ResourceFailures.unknownFailures());
    } on SocketException {
      return left(const ResourceFailures.networkFailures());
    } catch (e) {
      debugPrint('error occured in login :- $e');
      return left(const ResourceFailures.unknownFailures());
    }
  }

  @override
  Future<Either<ResourceFailures, ResourceModel>> searchResource(
      {required String searchName}) {
    throw UnimplementedError();
  }
}
