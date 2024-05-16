import 'package:freezed_annotation/freezed_annotation.dart';
part 'activity_failure.freezed.dart';
@freezed
class ActivityFailures with _$ActivityFailures{
  const factory ActivityFailures.serverFailures() = _ServerFailures;
   const factory ActivityFailures.clientFailure({required String message}) = _ClientFailure;
 const factory ActivityFailures.networkFailures(
      {@Default('Please make sure about your connection..! ')
          String message}) = _NetworkFailures;

  const factory ActivityFailures.unknownFailures(
      {@Default('Something went wrong..Please try again later..!')
          String message}) = _UnknownFailures;
}