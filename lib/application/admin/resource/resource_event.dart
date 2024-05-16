part of 'resource_bloc.dart';

@freezed
class ResourceEvent with _$ResourceEvent {
  const factory ResourceEvent.getResource() = _GetResource;
  const factory ResourceEvent.addResource({required String resource}) = _AddResource;
  const factory ResourceEvent.editResource({required String resource,required num id}) = _EditResource;
  const factory ResourceEvent.searchResource({required String resource }) = _SearchResource;
  const factory ResourceEvent.deleteResource({required num id}) = _DeleteResource;
}
