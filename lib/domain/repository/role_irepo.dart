import 'package:dartz/dartz.dart';
import 'package:gauthentication/domain/failures/role_failure.dart';
import 'package:gauthentication/domain/models/role_model.dart';

abstract class RoleIRepo {
  Future<Either<RoleFailures, RoleModel>> getRole({required String token});
  Future<Either<RoleFailures, RoleModel>> addRole({required String token,required String role});
  Future<Either<RoleFailures, RoleModel>> editRole({required String token,required num roleid,required String rolename});
  Future<Either<RoleFailures, RoleModel>> deleteRole({required String token,required num roleid});
  Future<Either<RoleFailures, RoleModel>> searchRole(
      {required String searchName});
}
