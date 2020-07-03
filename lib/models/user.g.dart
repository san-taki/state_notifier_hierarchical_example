// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as int,
    name: json['name'] as String,
    age: json['age'] as int,
    sex: json['sex'] == null
        ? null
        : Sex.fromJson(json['sex'] as Map<String, dynamic>),
    assetPath: json['assetPath'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'sex': instance.sex,
      'assetPath': instance.assetPath,
    };

_$Men _$_$MenFromJson(Map<String, dynamic> json) {
  return _$Men();
}

Map<String, dynamic> _$_$MenToJson(_$Men instance) => <String, dynamic>{};

_$Women _$_$WomenFromJson(Map<String, dynamic> json) {
  return _$Women();
}

Map<String, dynamic> _$_$WomenToJson(_$Women instance) => <String, dynamic>{};
