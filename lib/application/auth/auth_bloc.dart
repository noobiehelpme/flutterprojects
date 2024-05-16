import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gauthentication/domain/failures/auth_failure.dart';
import 'package:gauthentication/domain/repository/authentication_irepo.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthIRepo authRepo;
  AuthBloc(this.authRepo)
      : super(AuthState(isLoading: false, loginSuccessOrNot: none())) {
    on<_UserLogin>((event, emit) async {
      await authRepo.logOut();
      emit(state.copyWith(isLoading: true, loginSuccessOrNot: none()));
      final googleRes = await authRepo.googleLogin();
      await googleRes.fold((l) {
        emit(
            state.copyWith(isLoading: false, loginSuccessOrNot: some(left(l))));
      }, (account) async {
        final generateTokenRes = await authRepo.generateToken();
        await generateTokenRes.fold((l) {
          emit(state.copyWith(
              isLoading: false, loginSuccessOrNot: some(left(l))));
        }, (token) async {
          final loginRes =
              await authRepo.login(email: account.email, token: token);
          emit(state.copyWith(
              isLoading: false, loginSuccessOrNot: some(loginRes)));
        });
      });
    });
  }
}
