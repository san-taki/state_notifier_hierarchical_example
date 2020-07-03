// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoggedOut _$_$LoggedOutFromJson(Map<String, dynamic> json) {
  return _$LoggedOut();
}

Map<String, dynamic> _$_$LoggedOutToJson(_$LoggedOut instance) =>
    <String, dynamic>{};

_$LoggedIn _$_$LoggedInFromJson(Map<String, dynamic> json) {
  return _$LoggedIn(
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$LoggedInToJson(_$LoggedIn instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$Error _$_$ErrorFromJson(Map<String, dynamic> json) {
  return _$Error(
    exception: json['exception'] == null
        ? null
        : AppException.fromJson(json['exception'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$ErrorToJson(_$Error instance) => <String, dynamic>{
      'exception': instance.exception,
    };
