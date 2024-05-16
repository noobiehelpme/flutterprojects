part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.adminLogin({
    required String email,
    required String password,
  }) = _AdminLogin;
  const factory AuthEvent.userLogin() = _UserLogin;
}
