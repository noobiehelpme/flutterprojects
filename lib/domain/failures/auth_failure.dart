import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverFailures({required String message}) =
      _ServerFailures;
  const factory AuthFailure.clientFailures({required String message}) =
      _ClientFailures;
  const factory AuthFailure.networkFailures(
      {@Default('Please make sure about your connection..! ')
          String message}) = _NetworkFailures;

  const factory AuthFailure.unknownFailures(
      {@Default('Something went wrong..Please try again later..!')
          String message}) = _UnknownFailures;
}
