import 'package:hierarchicalstateexample/exceptions/app_exception.dart';
import 'package:hierarchicalstateexample/models/dummy_users.dart';
import 'package:hierarchicalstateexample/models/user.dart';

class LoginService {
  Future<User> login(int id) async {
    await Future.delayed(Duration(microseconds: 500));

    // このSwitch文は、本来サーバがtokenをみてユーザのレスポンスを返す、の仕事をしてるダミーコード。
    switch (id) {
      case 111:
        return DummyUsers.taro();
      case 222:
        return DummyUsers.hanako();
      case 333:
        return DummyUsers.youko();
      case 444:
        return DummyUsers.hideo();
      default:
        throw AppException.login(code: 9, message: "user not found");
    }
  }

  logout() async {
    // サーバの情報を消しに行く
    await Future.delayed(Duration(microseconds: 500));
  }
}
