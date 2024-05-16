import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:gauthentication/core/api/uris.dart';
import 'package:gauthentication/core/constants/google_credentials.dart';
import 'package:gauthentication/core/services/encryption_services.dart';
import 'package:gauthentication/core/services/session_services.dart';
import 'package:gauthentication/domain/failures/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:gauthentication/domain/repository/authentication_irepo.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: AuthIRepo)
class AuthRepo extends AuthIRepo {
  @override
  adminLogin({required String email, required String password}) {}

  @override
  Future<Either<AuthFailure, GoogleSignInAccount>> googleLogin() async {
    final googleSignIn = GoogleSignIn(clientId: GoogleCredentials.clientIDWeb);
    try {
      final googleSignInAccount = await googleSignIn.signIn();
      if (googleSignInAccount == null) {
        return left(const AuthFailure.serverFailures(
            message: 'SignIn failed...!Please try again later '));
      } else {
        return right(googleSignInAccount);
      }
    } on SocketException {
      return left(const AuthFailure.clientFailures(
          message: 'Please make sure about your connection..! '));
    } catch (e) {
      debugPrint('google sign error occured : $e');
      return left(const AuthFailure.unknownFailures());
    }
  }

  @override
  Future<Either<AuthFailure, dynamic>> login(
      {required String email, required String token}) async {
    try {
      final queryParams = setRequest(
        parameters: {"UID": email},
        type: "GetDetailsRequest",
        jwtToken: token,
      );
      final uri = Uri.http(ApiUris.baseUrl, ApiUris.userDetails, queryParams);
      final res = await http.get(uri);
      debugPrint(res.statusCode.toString());
      if (res.statusCode == 200) {
        if (isAuthorized(res.body) == true) {
          final isStored = await SessionServices.storageSession(
              token: jsonDecode(res.body)["jwtToken"]);
          return isStored
              ? right(res.body)
              : left(const AuthFailure.unknownFailures());
        } else {
          return left(const AuthFailure.unknownFailures());
        }
      } else if (res.statusCode == 422) {
        final generatedToken = await generateToken();
        return generatedToken.fold(
            (l) => left(l), (r) => login(email: email, token: r));
      }
      return left(const AuthFailure.unknownFailures());
    } on SocketException {
      return left(const AuthFailure.networkFailures());
    } catch (e) {
      debugPrint('error occured in login :- $e');
      return left(const AuthFailure.unknownFailures());
    }
  }

  @override
  Future<Either<AuthFailure, bool>> logOut() async {
    final googleSignIn = GoogleSignIn(clientId: GoogleCredentials.clientIDWeb);
    try {
      final googleSignInAccount = await googleSignIn.disconnect();
      if (googleSignInAccount == null) {
        return left(const AuthFailure.serverFailures(
            message: 'LogOut failed...!Please try again later '));
      } else {
        await SessionServices.clearSession() == true
            ? null
            : SessionServices.clearSession();
        return right(true);
      }
    } on SocketException {
      return left(const AuthFailure.networkFailures());
    } catch (e) {
      return left(const AuthFailure.unknownFailures());
    }
  }

  @override
  Future<Either<AuthFailure, String>> generateToken() async {
    final queryParams = {"deviceId": deviceId};
    final uri = Uri.http(ApiUris.baseUrl, ApiUris.generateToken, queryParams);
    try {
      final res = await http.post(uri);
      if (res.statusCode == 200) {
        return right(jsonDecode(res.body)['token']);
      }
      return left(const AuthFailure.unknownFailures());
    } on SocketException {
      return left(const AuthFailure.networkFailures());
    } catch (e) {
      debugPrint('genearte token error occured : $e');
      return left(const AuthFailure.unknownFailures());
    }
  }
}
