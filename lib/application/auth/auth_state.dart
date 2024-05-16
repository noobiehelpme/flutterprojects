part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isLoading,
    required Option<Either<AuthFailure, dynamic>> loginSuccessOrNot,
  }) = _AuthState;
}
