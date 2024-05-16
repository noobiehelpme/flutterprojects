import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gauthentication/core/services/session_services.dart';
import 'package:gauthentication/domain/failures/role_failure.dart';
import 'package:gauthentication/domain/models/role_model.dart';
import 'package:gauthentication/domain/repository/role_irepo.dart';
import 'package:injectable/injectable.dart';

part 'role_event.dart';
part 'role_state.dart';
part 'role_bloc.freezed.dart';

@injectable
class RoleBloc extends Bloc<RoleEvent, RoleState> {
  final RoleIRepo roleIRepo;
  RoleBloc(this.roleIRepo)
      : super(RoleState(isloading: false, roleModel: none())) {
    on<_GetRole>((event, emit) async {
      emit(state.copyWith(isloading: true, roleModel: none()));
      final roles =
          await roleIRepo.getRole(token: SessionServices.reteiveSession());
      emit(state.copyWith(isloading: false, roleModel: some(roles)));
    });
    on<_SearchRole>((event, emit) async {
      final List<RoleData> response = state.roleModel.fold(
          () => [],
          (a) => a.fold((l) => [], (r) {
                return r.data
                    .where((e) => e.rolename
                        .toLowerCase()
                        .contains(event.rolename.toLowerCase()))
                    .toList();
              }));
      emit(state.copyWith(
          isloading: false, roleModel: some(right(RoleModel(data: response)))));
    });
    on<_DeleteRole>((event, emit) async {
      emit(state.copyWith(isloading: true, roleModel: none()));
      final roles = await roleIRepo.deleteRole(
          token: SessionServices.reteiveSession(), roleid: event.roleid);
      emit(state.copyWith(isloading: false, roleModel: some(roles)));
    });
  }
}
