import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gauthentication/core/api/uris.dart';
import 'package:gauthentication/core/services/encryption_services.dart';
import 'package:gauthentication/core/services/session_services.dart';
import 'package:gauthentication/domain/models/role_model.dart';
import 'package:gauthentication/domain/failures/role_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:gauthentication/domain/repository/authentication_irepo.dart';
import 'package:gauthentication/domain/repository/role_irepo.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: RoleIRepo)
@injectable
class RoleRepo extends RoleIRepo {
  final AuthIRepo authIRepo;
  RoleRepo(this.authIRepo);
  @override
  Future<Either<RoleFailures, RoleModel>> addRole(
      {required String token, required String role}) async {
    throw UnimplementedError();
  }

  @override
  Future<Either<RoleFailures, RoleModel>> deleteRole(
      {required String token, required num roleid}) async {
    try {
      final queryParams = setRequest(
        parameters: {
          "RoleId": roleid,
        },
        type: "DeleteRolesRequest",
        jwtToken: token,
      );
      final uri = Uri.http(ApiUris.baseUrl, ApiUris.deletaRole, queryParams);
      final res = await http.put(uri);
      debugPrint('delete roles${res.statusCode}');
      if (res.statusCode == 200) {
        if (isAuthorized(res.body) == true) {
          final isStored = await SessionServices.storageSession(
              token: jsonDecode(res.body)["jwtToken"]);
          return isStored
              ? right(RoleModel.fromJson(jsonDecode(res.body)))
              : left(const RoleFailures.unknownFailures());
        } else {
          return left(const RoleFailures.unknownFailures());
        }
      } else if (res.statusCode == 422) {
        final generatedToken = await authIRepo.generateToken();
        return generatedToken.fold(
            (l) => left(RoleFailures.unknownFailures(message: l.message)),
            (r) => deleteRole(
                  token: r,
                  roleid: roleid,
                ));
      }
      return left(const RoleFailures.unknownFailures());
    } on SocketException {
      return left(const RoleFailures.networkFailures());
    } catch (e) {
      debugPrint('error occured in login :- $e');
      return left(const RoleFailures.unknownFailures());
    }
  }

  @override
  Future<Either<RoleFailures, RoleModel>> editRole(
      {required String token, required num roleid, required String rolename}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<RoleFailures, RoleModel>> getRole(
      {required String token}) async {
    try {
      final queryParams = setRequest(
        parameters: {},
        type: "GetRoles",
        jwtToken: token,
      );
      final uri = Uri.http(ApiUris.baseUrl, ApiUris.getRole, queryParams);
      final res = await http.get(uri);
      debugPrint('get roles${res.statusCode}');
      if (res.statusCode == 200) {
        if (isAuthorized(res.body) == true) {
          final isStored = await SessionServices.storageSession(
              token: jsonDecode(res.body)["jwtToken"]);
          return isStored
              ? right(RoleModel.fromJson(jsonDecode(res.body)))
              : left(const RoleFailures.unknownFailures());
        } else {
          return left(const RoleFailures.unknownFailures());
        }
      } else if (res.statusCode == 422) {
        final generatedToken = await authIRepo.generateToken();
        return generatedToken.fold(
            (l) => left(RoleFailures.unknownFailures(message: l.message)),
            (r) => getRole(
                  token: r,
                ));
      }
      return left(const RoleFailures.unknownFailures());
    } on SocketException {
      return left(const RoleFailures.networkFailures());
    } catch (e) {
      debugPrint('error occured in login :- $e');
      return left(const RoleFailures.unknownFailures());
    }
  }

  @override
  Future<Either<RoleFailures, RoleModel>> searchRole(
      {required String searchName}) async {
    throw UnimplementedError();
  }
}
