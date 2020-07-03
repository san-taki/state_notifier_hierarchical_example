import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

part 'app_exception.g.dart';

@freezed
abstract class AppException with _$AppException implements Exception {
  const factory AppException.login({
    @required int code,
    @required String message,
  }) = Login;
  const factory AppException.common({
    @required int code,
    @required String message,
  }) = Common;
  // andMore..

  factory AppException.fromJson(Map<String, dynamic> json) =>
      _$AppExceptionFromJson(json);
}
