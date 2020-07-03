import 'package:hierarchicalstateexample/exceptions/app_exception.dart';
import 'package:hierarchicalstateexample/models/user.dart';

class LoginService {
  Future<User> login(int id) async {
    await Future.delayed(Duration(microseconds: 500));

    // このSwitch文は、本来サーバがtokenをみてユーザのレスポンスを返す、の仕事をしてるダミーコード。
    switch (id) {
      case 111:
        return User(
          id: 111,
          name: "Taro",
          age: 15,
          sex: Sex.men(),
          assetPath: "assets/images/boy1.png",
        );
      case 222:
        return User(
          id: 222,
          name: "Hanako",
          age: 16,
          sex: Sex.women(),
          assetPath: "assets/images/girl.png",
        );
      case 333:
        return User(
          id: 333,
          name: "Youko",
          age: 20,
          sex: Sex.women(),
          assetPath: "assets/images/girl2.png",
        );
      case 444:
        return User(
          id: 444,
          name: "Taro",
          age: 35,
          sex: Sex.men(),
          assetPath: "assets/images/boy2.png",
        );
      default:
        throw AppException.login(code: 9, message: "user not found");
    }
  }
}
