// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@required int id,
      @required String name,
      @required int age,
      @required Sex sex,
      @required String assetPath}) {
    return _User(
      id: id,
      name: name,
      age: age,
      sex: sex,
      assetPath: assetPath,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  int get id;
  String get name;
  int get age;
  Sex get sex;
  String get assetPath;

  Map<String, dynamic> toJson();
  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call({int id, String name, int age, Sex sex, String assetPath});

  $SexCopyWith<$Res> get sex;
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object age = freezed,
    Object sex = freezed,
    Object assetPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      age: age == freezed ? _value.age : age as int,
      sex: sex == freezed ? _value.sex : sex as Sex,
      assetPath: assetPath == freezed ? _value.assetPath : assetPath as String,
    ));
  }

  @override
  $SexCopyWith<$Res> get sex {
    if (_value.sex == null) {
      return null;
    }
    return $SexCopyWith<$Res>(_value.sex, (value) {
      return _then(_value.copyWith(sex: value));
    });
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, int age, Sex sex, String assetPath});

  @override
  $SexCopyWith<$Res> get sex;
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object age = freezed,
    Object sex = freezed,
    Object assetPath = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      age: age == freezed ? _value.age : age as int,
      sex: sex == freezed ? _value.sex : sex as Sex,
      assetPath: assetPath == freezed ? _value.assetPath : assetPath as String,
    ));
  }
}

@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {@required this.id,
      @required this.name,
      @required this.age,
      @required this.sex,
      @required this.assetPath})
      : assert(id != null),
        assert(name != null),
        assert(age != null),
        assert(sex != null),
        assert(assetPath != null);

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int age;
  @override
  final Sex sex;
  @override
  final String assetPath;

  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age, sex: $sex, assetPath: $assetPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.sex, sex) ||
                const DeepCollectionEquality().equals(other.sex, sex)) &&
            (identical(other.assetPath, assetPath) ||
                const DeepCollectionEquality()
                    .equals(other.assetPath, assetPath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(sex) ^
      const DeepCollectionEquality().hash(assetPath);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {@required int id,
      @required String name,
      @required int age,
      @required Sex sex,
      @required String assetPath}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get age;
  @override
  Sex get sex;
  @override
  String get assetPath;
  @override
  _$UserCopyWith<_User> get copyWith;
}

Sex _$SexFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'men':
      return Men.fromJson(json);
    case 'women':
      return Women.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$SexTearOff {
  const _$SexTearOff();

  Men men() {
    return const Men();
  }

  Women women() {
    return const Women();
  }
}

// ignore: unused_element
const $Sex = _$SexTearOff();

mixin _$Sex {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result men(),
    @required Result women(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result men(),
    Result women(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result men(Men value),
    @required Result women(Women value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result men(Men value),
    Result women(Women value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $SexCopyWith<$Res> {
  factory $SexCopyWith(Sex value, $Res Function(Sex) then) =
      _$SexCopyWithImpl<$Res>;
}

class _$SexCopyWithImpl<$Res> implements $SexCopyWith<$Res> {
  _$SexCopyWithImpl(this._value, this._then);

  final Sex _value;
  // ignore: unused_field
  final $Res Function(Sex) _then;
}

abstract class $MenCopyWith<$Res> {
  factory $MenCopyWith(Men value, $Res Function(Men) then) =
      _$MenCopyWithImpl<$Res>;
}

class _$MenCopyWithImpl<$Res> extends _$SexCopyWithImpl<$Res>
    implements $MenCopyWith<$Res> {
  _$MenCopyWithImpl(Men _value, $Res Function(Men) _then)
      : super(_value, (v) => _then(v as Men));

  @override
  Men get _value => super._value as Men;
}

@JsonSerializable()
class _$Men implements Men {
  const _$Men();

  factory _$Men.fromJson(Map<String, dynamic> json) => _$_$MenFromJson(json);

  @override
  String toString() {
    return 'Sex.men()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Men);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result men(),
    @required Result women(),
  }) {
    assert(men != null);
    assert(women != null);
    return men();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result men(),
    Result women(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (men != null) {
      return men();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result men(Men value),
    @required Result women(Women value),
  }) {
    assert(men != null);
    assert(women != null);
    return men(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result men(Men value),
    Result women(Women value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (men != null) {
      return men(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$MenToJson(this)..['runtimeType'] = 'men';
  }
}

abstract class Men implements Sex {
  const factory Men() = _$Men;

  factory Men.fromJson(Map<String, dynamic> json) = _$Men.fromJson;
}

abstract class $WomenCopyWith<$Res> {
  factory $WomenCopyWith(Women value, $Res Function(Women) then) =
      _$WomenCopyWithImpl<$Res>;
}

class _$WomenCopyWithImpl<$Res> extends _$SexCopyWithImpl<$Res>
    implements $WomenCopyWith<$Res> {
  _$WomenCopyWithImpl(Women _value, $Res Function(Women) _then)
      : super(_value, (v) => _then(v as Women));

  @override
  Women get _value => super._value as Women;
}

@JsonSerializable()
class _$Women implements Women {
  const _$Women();

  factory _$Women.fromJson(Map<String, dynamic> json) =>
      _$_$WomenFromJson(json);

  @override
  String toString() {
    return 'Sex.women()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Women);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result men(),
    @required Result women(),
  }) {
    assert(men != null);
    assert(women != null);
    return women();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result men(),
    Result women(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (women != null) {
      return women();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result men(Men value),
    @required Result women(Women value),
  }) {
    assert(men != null);
    assert(women != null);
    return women(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result men(Men value),
    Result women(Women value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (women != null) {
      return women(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$WomenToJson(this)..['runtimeType'] = 'women';
  }
}

abstract class Women implements Sex {
  const factory Women() = _$Women;

  factory Women.fromJson(Map<String, dynamic> json) = _$Women.fromJson;
}
