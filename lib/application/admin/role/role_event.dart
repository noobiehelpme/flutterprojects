part of 'role_bloc.dart';

@freezed
class RoleEvent with _$RoleEvent {
  const factory RoleEvent.getRole() = _GetRole;
  const factory RoleEvent.addRole({required String rolename}) = _AddRole;
  const factory RoleEvent.editRole({required num roleid,required String rolename}) = _EditRole;
  const factory RoleEvent.deleteRole({required num roleid,}) = _DeleteRole;
  const factory RoleEvent.searchRole({required String rolename}) = _SearchRole;
  
  
  
  
  
}