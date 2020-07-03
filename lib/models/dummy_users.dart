import 'package:hierarchicalstateexample/models/user.dart';

class DummyUsers {
  static User taro() {
    return User(
      id: 111,
      name: "Taro",
      assetPath: "assets/images/boy1.png",
    );
  }

  static User hanako() {
    return User(
      id: 222,
      name: "Hanako",
      assetPath: "assets/images/girl.png",
    );
  }

  static User youko() {
    return User(
      id: 333,
      name: "Youko",
      assetPath: "assets/images/girl2.png",
    );
  }

  static User hideo() {
    return User(
      id: 444,
      name: "Hideo",
      assetPath: "assets/images/boy2.png",
    );
  }
}