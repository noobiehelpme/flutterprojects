import 'package:gauthentication/domain/failures/auth_failure.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:dartz/dartz.dart';

abstract class AuthIRepo {
  adminLogin({required String email, required String password});
  Future<Either<AuthFailure, dynamic>> login({required String email,required String token});
  Future<Either<AuthFailure, GoogleSignInAccount>> googleLogin();
  Future<Either<AuthFailure, String>> generateToken();
  Future<Either<AuthFailure, bool>> logOut();
}
