import 'package:dartz/dartz.dart';
import 'package:gauthentication/domain/failures/resource_failures.dart';
import 'package:gauthentication/domain/models/resource_model.dart';

abstract class ResourceIRepo {
  Future<Either<ResourceFailures, ResourceModel>> getResources(
      {required String token});
  Future<Either<ResourceFailures, ResourceModel>> addResource(
      {required String token, required String resource});
  Future<Either<ResourceFailures, ResourceModel>> editResource(
      {required String token, required String resource,required num resourceId});
  Future<Either<ResourceFailures, ResourceModel>> deleteResource(
      {required String token,required num resourceId});
  Future<Either<ResourceFailures, ResourceModel>> searchResource(
      {required String searchName});
}
