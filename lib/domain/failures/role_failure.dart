import 'package:freezed_annotation/freezed_annotation.dart';
part 'role_failure.freezed.dart';
@freezed
class RoleFailures with _$RoleFailures{
 const factory RoleFailures.serverFailure({required String message}) = _ServerFailure;
 const factory RoleFailures.clientFailure({required String message}) = _ClientFailure;
 const factory RoleFailures.networkFailures(
      {@Default('Please make sure about your connection..! ')
          String message}) = _NetworkFailures;

  const factory RoleFailures.unknownFailures(
      {@Default('Something went wrong..Please try again later..!')
          String message}) = _UnknownFailures;
}