import 'package:kaka/bloc/page/UserModel.dart';

class LoginRepository {
  static Future login(String name, String pwd) async {
    if (name.length >= 6 && pwd.length >= 6) {
      await Future.delayed(Duration(seconds: 2));
      return UserModel(name: name, pwd: pwd);
    } else {
      throw Exception('登录错误');
    }
  }
}
