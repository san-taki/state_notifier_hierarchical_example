// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AppState _$AppStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'loggedOut':
      return LoggedOut.fromJson(json);
    case 'loggedIn':
      return LoggedIn.fromJson(json);
    case 'error':
      return Error.fromJson(json);

    default:
      throw FallThroughError();
  }
}

class _$AppStateTearOff {
  const _$AppStateTearOff();

  LoggedOut loggedOut() {
    return const LoggedOut();
  }

  LoggedIn loggedIn({@required User user}) {
    return LoggedIn(
      user: user,
    );
  }

  Error error({@required AppException exception}) {
    return Error(
      exception: exception,
    );
  }
}

// ignore: unused_element
const $AppState = _$AppStateTearOff();

mixin _$AppState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loggedOut(),
    @required Result loggedIn(User user),
    @required Result error(AppException exception),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loggedOut(),
    Result loggedIn(User user),
    Result error(AppException exception),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loggedOut(LoggedOut value),
    @required Result loggedIn(LoggedIn value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loggedOut(LoggedOut value),
    Result loggedIn(LoggedIn value),
    Result error(Error value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
}

abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

abstract class $LoggedOutCopyWith<$Res> {
  factory $LoggedOutCopyWith(LoggedOut value, $Res Function(LoggedOut) then) =
      _$LoggedOutCopyWithImpl<$Res>;
}

class _$LoggedOutCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $LoggedOutCopyWith<$Res> {
  _$LoggedOutCopyWithImpl(LoggedOut _value, $Res Function(LoggedOut) _then)
      : super(_value, (v) => _then(v as LoggedOut));

  @override
  LoggedOut get _value => super._value as LoggedOut;
}

@JsonSerializable()
class _$LoggedOut implements LoggedOut {
  const _$LoggedOut();

  factory _$LoggedOut.fromJson(Map<String, dynamic> json) =>
      _$_$LoggedOutFromJson(json);

  @override
  String toString() {
    return 'AppState.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loggedOut(),
    @required Result loggedIn(User user),
    @required Result error(AppException exception),
  }) {
    assert(loggedOut != null);
    assert(loggedIn != null);
    assert(error != null);
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loggedOut(),
    Result loggedIn(User user),
    Result error(AppException exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loggedOut(LoggedOut value),
    @required Result loggedIn(LoggedIn value),
    @required Result error(Error value),
  }) {
    assert(loggedOut != null);
    assert(loggedIn != null);
    assert(error != null);
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loggedOut(LoggedOut value),
    Result loggedIn(LoggedIn value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LoggedOutToJson(this)..['runtimeType'] = 'loggedOut';
  }
}

abstract class LoggedOut implements AppState {
  const factory LoggedOut() = _$LoggedOut;

  factory LoggedOut.fromJson(Map<String, dynamic> json) = _$LoggedOut.fromJson;
}

abstract class $LoggedInCopyWith<$Res> {
  factory $LoggedInCopyWith(LoggedIn value, $Res Function(LoggedIn) then) =
      _$LoggedInCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class _$LoggedInCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $LoggedInCopyWith<$Res> {
  _$LoggedInCopyWithImpl(LoggedIn _value, $Res Function(LoggedIn) _then)
      : super(_value, (v) => _then(v as LoggedIn));

  @override
  LoggedIn get _value => super._value as LoggedIn;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(LoggedIn(
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

@JsonSerializable()
class _$LoggedIn implements LoggedIn {
  const _$LoggedIn({@required this.user}) : assert(user != null);

  factory _$LoggedIn.fromJson(Map<String, dynamic> json) =>
      _$_$LoggedInFromJson(json);

  @override
  final User user;

  @override
  String toString() {
    return 'AppState.loggedIn(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoggedIn &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  $LoggedInCopyWith<LoggedIn> get copyWith =>
      _$LoggedInCopyWithImpl<LoggedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loggedOut(),
    @required Result loggedIn(User user),
    @required Result error(AppException exception),
  }) {
    assert(loggedOut != null);
    assert(loggedIn != null);
    assert(error != null);
    return loggedIn(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loggedOut(),
    Result loggedIn(User user),
    Result error(AppException exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loggedOut(LoggedOut value),
    @required Result loggedIn(LoggedIn value),
    @required Result error(Error value),
  }) {
    assert(loggedOut != null);
    assert(loggedIn != null);
    assert(error != null);
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loggedOut(LoggedOut value),
    Result loggedIn(LoggedIn value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LoggedInToJson(this)..['runtimeType'] = 'loggedIn';
  }
}

abstract class LoggedIn implements AppState {
  const factory LoggedIn({@required User user}) = _$LoggedIn;

  factory LoggedIn.fromJson(Map<String, dynamic> json) = _$LoggedIn.fromJson;

  User get user;
  $LoggedInCopyWith<LoggedIn> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({AppException exception});

  $AppExceptionCopyWith<$Res> get exception;
}

class _$ErrorCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object exception = freezed,
  }) {
    return _then(Error(
      exception:
          exception == freezed ? _value.exception : exception as AppException,
    ));
  }

  @override
  $AppExceptionCopyWith<$Res> get exception {
    if (_value.exception == null) {
      return null;
    }
    return $AppExceptionCopyWith<$Res>(_value.exception, (value) {
      return _then(_value.copyWith(exception: value));
    });
  }
}

@JsonSerializable()
class _$Error implements Error {
  const _$Error({@required this.exception}) : assert(exception != null);

  factory _$Error.fromJson(Map<String, dynamic> json) =>
      _$_$ErrorFromJson(json);

  @override
  final AppException exception;

  @override
  String toString() {
    return 'AppState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loggedOut(),
    @required Result loggedIn(User user),
    @required Result error(AppException exception),
  }) {
    assert(loggedOut != null);
    assert(loggedIn != null);
    assert(error != null);
    return error(exception);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loggedOut(),
    Result loggedIn(User user),
    Result error(AppException exception),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loggedOut(LoggedOut value),
    @required Result loggedIn(LoggedIn value),
    @required Result error(Error value),
  }) {
    assert(loggedOut != null);
    assert(loggedIn != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loggedOut(LoggedOut value),
    Result loggedIn(LoggedIn value),
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

abstract class Error implements AppState {
  const factory Error({@required AppException exception}) = _$Error;

  factory Error.fromJson(Map<String, dynamic> json) = _$Error.fromJson;

  AppException get exception;
  $ErrorCopyWith<Error> get copyWith;
}
