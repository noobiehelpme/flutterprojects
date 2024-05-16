import 'package:freezed_annotation/freezed_annotation.dart';
part 'resource_failures.freezed.dart';

@freezed
class ResourceFailures with _$ResourceFailures {
  const factory ResourceFailures.serverFailures({required String message}) =
      _ServerFailures;
  const factory ResourceFailures.clientFailures({required String message}) =
      _ClientFailures;
  const factory ResourceFailures.networkFailures(
      {@Default('Please make sure about your connection..! ')
          String message}) = _NetworkFailures;

  const factory ResourceFailures.unknownFailures(
      {@Default('Something went wrong..Please try again later..!')
          String message}) = _UnknownFailures;
}
