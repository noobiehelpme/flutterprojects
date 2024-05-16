import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gauthentication/core/services/session_services.dart';
import 'package:gauthentication/domain/failures/resource_failures.dart';
import 'package:gauthentication/domain/models/resource_model.dart';
import 'package:gauthentication/domain/repository/resource_irepo.dart';
import 'package:injectable/injectable.dart';

part 'resource_event.dart';
part 'resource_state.dart';
part 'resource_bloc.freezed.dart';

@injectable
class ResourceBloc extends Bloc<ResourceEvent, ResourceState> {
  final ResourceIRepo resourceIRepo;
  ResourceBloc(this.resourceIRepo)
      : super(ResourceState(isloading: false, resourceModel: none())) {
    on<_GetResource>((event, emit) async {
      emit(state.copyWith(isloading: true, resourceModel: none()));
      final resources = await resourceIRepo.getResources(
          token: SessionServices.reteiveSession());
      emit(state.copyWith(isloading: false, resourceModel: some(resources)));
    });
    on<_AddResource>((event, emit) async {
      emit(state.copyWith(isloading: true));
      final resources = await resourceIRepo.addResource(
          token: SessionServices.reteiveSession(), resource: event.resource);
      emit(state.copyWith(isloading: false, resourceModel: some(resources)));
    });
    on<_EditResource>((event, emit) async {
      emit(state.copyWith(isloading: true));
      final resources = await resourceIRepo.editResource(
          token: SessionServices.reteiveSession(),
          resource: event.resource,
          resourceId: event.id);
      emit(state.copyWith(isloading: false, resourceModel: some(resources)));
    });
    on<_DeleteResource>((event, emit) async {
      emit(state.copyWith(isloading: true));
      final resources = await resourceIRepo.deleteResource(
          token: SessionServices.reteiveSession(), resourceId: event.id);
      emit(state.copyWith(isloading: false, resourceModel: some(resources)));
    });
    on<_SearchResource>((event, emit) async {
      final List<ResourceData> response = state.resourceModel.fold(() => [], (a) => a.fold((l) => [], (r){
        return r.data.where((e) => e.resource.toLowerCase().contains(event.resource.toLowerCase())).toList();
      }));
      emit(state.copyWith(isloading: false, resourceModel: some(right(ResourceModel(data: response)))));
    });
  }
}
