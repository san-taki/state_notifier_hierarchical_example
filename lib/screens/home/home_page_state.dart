import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hierarchicalstateexample/app_state.dart';
import 'package:hierarchicalstateexample/exceptions/app_exception.dart';
import 'package:hierarchicalstateexample/models/user.dart';
import 'package:state_notifier/state_notifier.dart';

part 'home_page_state.freezed.dart';

part 'home_page_state.g.dart';

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState.blank() = Blank;
  const factory HomePageState.shouldLogin() = ShouldLogin;
  const factory HomePageState.ideal({@required IdealData data}) = Ideal;
  const factory HomePageState.error({@required AppException exception}) = Error;

  factory HomePageState.fromJson(Map<String, dynamic> json) =>
      _$HomePageStateFromJson(json);
}

class HomePageStateNotifier extends StateNotifier<HomePageState>
    with LocatorMixin {
  HomePageStateNotifier() : super(const HomePageState.blank());

  AppState get _appState => read();
  AppStateNotifier get _appStateNotifier => read();

  @override
  void initState() {}

  @override
  void update(Locator watch) {
    updateState(watch);
  }

  void updateState(Locator watch) {
    watch<AppState>().when(
      loggedOut: () => {
        state = HomePageState.shouldLogin(),
      },
      loggedIn: (User user) => {
        state = HomePageState.ideal(data: IdealData(user: user)),
      },
      error: (AppException e) => {
        state = HomePageState.error(exception: e),
      },
    );
  }

  void login(int id) {
    _appStateNotifier.login(id);
  }
}

@freezed
abstract class IdealData with _$IdealData {
  const factory IdealData({@required User user}) = _IdealData;

  factory IdealData.fromJson(Map<String, dynamic> json) =>
      _$IdealDataFromJson(json);
}
