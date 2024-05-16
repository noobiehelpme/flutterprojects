part of 'role_bloc.dart';

@freezed
class RoleState with _$RoleState {
  const factory RoleState(
    {required bool isloading,
    required Option<Either<RoleFailures,RoleModel>>roleModel
}) =_RoleState ;
  
}
