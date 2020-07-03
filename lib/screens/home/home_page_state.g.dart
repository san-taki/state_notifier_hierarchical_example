// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Blank _$_$BlankFromJson(Map<String, dynamic> json) {
  return _$Blank();
}

Map<String, dynamic> _$_$BlankToJson(_$Blank instance) => <String, dynamic>{};

_$ShouldLogin _$_$ShouldLoginFromJson(Map<String, dynamic> json) {
  return _$ShouldLogin();
}

Map<String, dynamic> _$_$ShouldLoginToJson(_$ShouldLogin instance) =>
    <String, dynamic>{};

_$Ideal _$_$IdealFromJson(Map<String, dynamic> json) {
  return _$Ideal(
    data: json['data'] == null
        ? null
        : IdealData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$IdealToJson(_$Ideal instance) => <String, dynamic>{
      'data': instance.data,
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

_$_IdealData _$_$_IdealDataFromJson(Map<String, dynamic> json) {
  return _$_IdealData(
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_IdealDataToJson(_$_IdealData instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
