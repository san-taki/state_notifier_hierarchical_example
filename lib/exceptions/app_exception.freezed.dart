// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AppException _$AppExceptionFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'login':
      return Login.fromJson(json);
    case 'common':
      return Common.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$AppExceptionTearOff {
  const _$AppExceptionTearOff();

  Login login({@required int code, @required String message}) {
    return Login(
      code: code,
      message: message,
    );
  }

  Common common({@required int code, @required String message}) {
    return Common(
      code: code,
      message: message,
    );
  }
}

// ignore: unused_element
const $AppException = _$AppExceptionTearOff();

mixin _$AppException {
  int get code;
  String get message;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(int code, String message),
    @required Result common(int code, String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(int code, String message),
    Result common(int code, String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(Login value),
    @required Result common(Common value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(Login value),
    Result common(Common value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $AppExceptionCopyWith<AppException> get copyWith;
}

abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res>;
  $Res call({int code, String message});
}

class _$AppExceptionCopyWithImpl<$Res> implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  final AppException _value;
  // ignore: unused_field
  final $Res Function(AppException) _then;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed ? _value.code : code as int,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class $LoginCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res>;
  @override
  $Res call({int code, String message});
}

class _$LoginCopyWithImpl<$Res> extends _$AppExceptionCopyWithImpl<$Res>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(Login _value, $Res Function(Login) _then)
      : super(_value, (v) => _then(v as Login));

  @override
  Login get _value => super._value as Login;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
  }) {
    return _then(Login(
      code: code == freezed ? _value.code : code as int,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

@JsonSerializable()
class _$Login implements Login {
  const _$Login({@required this.code, @required this.message})
      : assert(code != null),
        assert(message != null);

  factory _$Login.fromJson(Map<String, dynamic> json) =>
      _$_$LoginFromJson(json);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'AppException.login(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Login &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @override
  $LoginCopyWith<Login> get copyWith =>
      _$LoginCopyWithImpl<Login>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(int code, String message),
    @required Result common(int code, String message),
  }) {
    assert(login != null);
    assert(common != null);
    return login(code, message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(int code, String message),
    Result common(int code, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(Login value),
    @required Result common(Common value),
  }) {
    assert(login != null);
    assert(common != null);
    return login(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(Login value),
    Result common(Common value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (login != null) {
      return login(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LoginToJson(this)..['runtimeType'] = 'login';
  }
}

abstract class Login implements AppException {
  const factory Login({@required int code, @required String message}) = _$Login;

  factory Login.fromJson(Map<String, dynamic> json) = _$Login.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  $LoginCopyWith<Login> get copyWith;
}

abstract class $CommonCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $CommonCopyWith(Common value, $Res Function(Common) then) =
      _$CommonCopyWithImpl<$Res>;
  @override
  $Res call({int code, String message});
}

class _$CommonCopyWithImpl<$Res> extends _$AppExceptionCopyWithImpl<$Res>
    implements $CommonCopyWith<$Res> {
  _$CommonCopyWithImpl(Common _value, $Res Function(Common) _then)
      : super(_value, (v) => _then(v as Common));

  @override
  Common get _value => super._value as Common;

  @override
  $Res call({
    Object code = freezed,
    Object message = freezed,
  }) {
    return _then(Common(
      code: code == freezed ? _value.code : code as int,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

@JsonSerializable()
class _$Common implements Common {
  const _$Common({@required this.code, @required this.message})
      : assert(code != null),
        assert(message != null);

  factory _$Common.fromJson(Map<String, dynamic> json) =>
      _$_$CommonFromJson(json);

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'AppException.common(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Common &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @override
  $CommonCopyWith<Common> get copyWith =>
      _$CommonCopyWithImpl<Common>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result login(int code, String message),
    @required Result common(int code, String message),
  }) {
    assert(login != null);
    assert(common != null);
    return common(code, message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result login(int code, String message),
    Result common(int code, String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (common != null) {
      return common(code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result login(Login value),
    @required Result common(Common value),
  }) {
    assert(login != null);
    assert(common != null);
    return common(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result login(Login value),
    Result common(Common value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (common != null) {
      return common(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$CommonToJson(this)..['runtimeType'] = 'common';
  }
}

abstract class Common implements AppException {
  const factory Common({@required int code, @required String message}) =
      _$Common;

  factory Common.fromJson(Map<String, dynamic> json) = _$Common.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  $CommonCopyWith<Common> get copyWith;
}
