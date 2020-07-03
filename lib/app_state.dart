import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hierarchicalstateexample/exceptions/app_exception.dart';
import 'package:hierarchicalstateexample/models/user.dart';
import 'package:hierarchicalstateexample/resource/api/login_service.dart';
import 'package:state_notifier/state_notifier.dart';

part 'app_state.freezed.dart';

part 'app_state.g.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState.loggedOut() = LoggedOut;
  const factory AppState.loggedIn({@required User user}) = LoggedIn;
  const factory AppState.error({@required AppException exception}) = Error;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}

class AppStateNotifier extends StateNotifier<AppState> with LocatorMixin {
  AppStateNotifier() : super(const AppState.loggedOut());

  LoginService get _loginService => read();

  @override
  void initState() {
    _autoLogin();
  }

  @override
  void update(Locator watch) {}

  void login(int id) async {
    _login(id);
  }

  void _autoLogin() async {
    int invalidId = 999;
    _login(invalidId);
  }

  void _login(int id) async {
    await _loginService.login(id).then((user) {
      state = AppState.loggedIn(user: user);
    }).catchError(
      (Object err) {
        if (err is AppException) {
          err.when(
            login: (id, message) => {
              state = AppState.loggedOut(),
            },
            common: (id, message) => {
              state = AppState.error(exception: err),
            },
          );
        }
      },
    );
  }

  logout() async {
    await _loginService.logout();
    state = AppState.loggedOut();
  }
}
