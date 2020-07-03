import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hierarchicalstateexample/models/user.dart';
import 'package:state_notifier/state_notifier.dart';

part 'home_page_state.freezed.dart';

part 'home_page_state.g.dart';

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState.blank() = Blank;
  const factory HomePageState.ideal({@required IdealData data}) = Ideal;
  const factory HomePageState.error() = Error;

  factory HomePageState.fromJson(Map<String, dynamic> json) =>
      _$HomePageStateFromJson(json);
}

class HomePageStateNotifier extends StateNotifier<HomePageState>
    with LocatorMixin {
  HomePageStateNotifier() : super(const HomePageState.blank());

  @override
  void initState() {
    state = Ideal(data: IdealData(user: User(
      id: 1,
      name: "Taro",
      age: 15,
      sex: Sex.men(),
      assetPath: "assets/images/boy1.png"
    )));
  }

  @override
  void update(Locator watch) {}

  void updateUser() {

  }
}

@freezed
abstract class IdealData with _$IdealData {
  const factory IdealData({@required User user}) = _IdealData;

  factory IdealData.fromJson(Map<String, dynamic> json) =>
      _$IdealDataFromJson(json);
}
