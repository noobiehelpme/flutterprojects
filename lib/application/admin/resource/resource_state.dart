part of 'resource_bloc.dart';

@freezed
class ResourceState with _$ResourceState {
  const factory ResourceState({
    required bool isloading,
    required Option<Either<ResourceFailures, ResourceModel>> resourceModel,
  }) = _ResourceState;
}
