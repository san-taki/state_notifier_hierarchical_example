// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HomePageState _$HomePageStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'blank':
      return Blank.fromJson(json);
    case 'ideal':
      return Ideal.fromJson(json);
    case 'error':
      return Error.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$HomePageStateTearOff {
  const _$HomePageStateTearOff();

  Blank blank() {
    return const Blank();
  }

  Ideal ideal({@required IdealData data}) {
    return Ideal(
      data: data,
    );
  }

  Error error() {
    return const Error();
  }
}

// ignore: unused_element
const $HomePageState = _$HomePageStateTearOff();

mixin _$HomePageState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result ideal(IdealData data),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result ideal(IdealData data),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(Blank value),
    @required Result ideal(Ideal value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(Blank value),
    Result ideal(Ideal value),
    Result error(Error value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
}

class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;
}

abstract class $BlankCopyWith<$Res> {
  factory $BlankCopyWith(Blank value, $Res Function(Blank) then) =
      _$BlankCopyWithImpl<$Res>;
}

class _$BlankCopyWithImpl<$Res> extends _$HomePageStateCopyWithImpl<$Res>
    implements $BlankCopyWith<$Res> {
  _$BlankCopyWithImpl(Blank _value, $Res Function(Blank) _then)
      : super(_value, (v) => _then(v as Blank));

  @override
  Blank get _value => super._value as Blank;
}

@JsonSerializable()
class _$Blank implements Blank {
  const _$Blank();

  factory _$Blank.fromJson(Map<String, dynamic> json) =>
      _$_$BlankFromJson(json);

  @override
  String toString() {
    return 'HomePageState.blank()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Blank);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result ideal(IdealData data),
    @required Result error(),
  }) {
    assert(blank != null);
    assert(ideal != null);
    assert(error != null);
    return blank();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result ideal(IdealData data),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blank != null) {
      return blank();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(Blank value),
    @required Result ideal(Ideal value),
    @required Result error(Error value),
  }) {
    assert(blank != null);
    assert(ideal != null);
    assert(error != null);
    return blank(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(Blank value),
    Result ideal(Ideal value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (blank != null) {
      return blank(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$BlankToJson(this)..['runtimeType'] = 'blank';
  }
}

abstract class Blank implements HomePageState {
  const factory Blank() = _$Blank;

  factory Blank.fromJson(Map<String, dynamic> json) = _$Blank.fromJson;
}

abstract class $IdealCopyWith<$Res> {
  factory $IdealCopyWith(Ideal value, $Res Function(Ideal) then) =
      _$IdealCopyWithImpl<$Res>;
  $Res call({IdealData data});

  $IdealDataCopyWith<$Res> get data;
}

class _$IdealCopyWithImpl<$Res> extends _$HomePageStateCopyWithImpl<$Res>
    implements $IdealCopyWith<$Res> {
  _$IdealCopyWithImpl(Ideal _value, $Res Function(Ideal) _then)
      : super(_value, (v) => _then(v as Ideal));

  @override
  Ideal get _value => super._value as Ideal;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Ideal(
      data: data == freezed ? _value.data : data as IdealData,
    ));
  }

  @override
  $IdealDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $IdealDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

@JsonSerializable()
class _$Ideal implements Ideal {
  const _$Ideal({@required this.data}) : assert(data != null);

  factory _$Ideal.fromJson(Map<String, dynamic> json) =>
      _$_$IdealFromJson(json);

  @override
  final IdealData data;

  @override
  String toString() {
    return 'HomePageState.ideal(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Ideal &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $IdealCopyWith<Ideal> get copyWith =>
      _$IdealCopyWithImpl<Ideal>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result ideal(IdealData data),
    @required Result error(),
  }) {
    assert(blank != null);
    assert(ideal != null);
    assert(error != null);
    return ideal(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result ideal(IdealData data),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ideal != null) {
      return ideal(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(Blank value),
    @required Result ideal(Ideal value),
    @required Result error(Error value),
  }) {
    assert(blank != null);
    assert(ideal != null);
    assert(error != null);
    return ideal(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(Blank value),
    Result ideal(Ideal value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (ideal != null) {
      return ideal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$IdealToJson(this)..['runtimeType'] = 'ideal';
  }
}

abstract class Ideal implements HomePageState {
  const factory Ideal({@required IdealData data}) = _$Ideal;

  factory Ideal.fromJson(Map<String, dynamic> json) = _$Ideal.fromJson;

  IdealData get data;
  $IdealCopyWith<Ideal> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
}

class _$ErrorCopyWithImpl<$Res> extends _$HomePageStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;
}

@JsonSerializable()
class _$Error implements Error {
  const _$Error();

  factory _$Error.fromJson(Map<String, dynamic> json) =>
      _$_$ErrorFromJson(json);

  @override
  String toString() {
    return 'HomePageState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result blank(),
    @required Result ideal(IdealData data),
    @required Result error(),
  }) {
    assert(blank != null);
    assert(ideal != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result blank(),
    Result ideal(IdealData data),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result blank(Blank value),
    @required Result ideal(Ideal value),
    @required Result error(Error value),
  }) {
    assert(blank != null);
    assert(ideal != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result blank(Blank value),
    Result ideal(Ideal value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ErrorToJson(this)..['runtimeType'] = 'error';
  }
}

abstract class Error implements HomePageState {
  const factory Error() = _$Error;

  factory Error.fromJson(Map<String, dynamic> json) = _$Error.fromJson;
}

IdealData _$IdealDataFromJson(Map<String, dynamic> json) {
  return _IdealData.fromJson(json);
}

class _$IdealDataTearOff {
  const _$IdealDataTearOff();

  _IdealData call({@required User user}) {
    return _IdealData(
      user: user,
    );
  }
}

// ignore: unused_element
const $IdealData = _$IdealDataTearOff();

mixin _$IdealData {
  User get user;

  Map<String, dynamic> toJson();
  $IdealDataCopyWith<IdealData> get copyWith;
}

abstract class $IdealDataCopyWith<$Res> {
  factory $IdealDataCopyWith(IdealData value, $Res Function(IdealData) then) =
      _$IdealDataCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$IdealDataCopyWithImpl<$Res> implements $IdealDataCopyWith<$Res> {
  _$IdealDataCopyWithImpl(this._value, this._then);

  final IdealData _value;
  // ignore: unused_field
  final $Res Function(IdealData) _then;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

abstract class _$IdealDataCopyWith<$Res> implements $IdealDataCopyWith<$Res> {
  factory _$IdealDataCopyWith(
          _IdealData value, $Res Function(_IdealData) then) =
      __$IdealDataCopyWithImpl<$Res>;
  @override
  $Res call({User user});

  @override
  $UserCopyWith<$Res> get user;
}

class __$IdealDataCopyWithImpl<$Res> extends _$IdealDataCopyWithImpl<$Res>
    implements _$IdealDataCopyWith<$Res> {
  __$IdealDataCopyWithImpl(_IdealData _value, $Res Function(_IdealData) _then)
      : super(_value, (v) => _then(v as _IdealData));

  @override
  _IdealData get _value => super._value as _IdealData;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_IdealData(
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

@JsonSerializable()
class _$_IdealData implements _IdealData {
  const _$_IdealData({@required this.user}) : assert(user != null);

  factory _$_IdealData.fromJson(Map<String, dynamic> json) =>
      _$_$_IdealDataFromJson(json);

  @override
  final User user;

  @override
  String toString() {
    return 'IdealData(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IdealData &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$IdealDataCopyWith<_IdealData> get copyWith =>
      __$IdealDataCopyWithImpl<_IdealData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IdealDataToJson(this);
  }
}

abstract class _IdealData implements IdealData {
  const factory _IdealData({@required User user}) = _$_IdealData;

  factory _IdealData.fromJson(Map<String, dynamic> json) =
      _$_IdealData.fromJson;

  @override
  User get user;
  @override
  _$IdealDataCopyWith<_IdealData> get copyWith;
}
