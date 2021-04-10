import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaka/bloc/UserModel.dart';

import 'LoginEvent.dart';
import 'LoginState.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  // bloc有一个初始状态
  @override
  LoginState get initialState => LoginInitialState();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginPressEvent) {
      UserModel userModel = UserModel.GetNew();
      // 验证用户名和密码
      if (event.name == "guest" && event.pwd == "guest") {
        yield LoginSuccessState(
            new UserModel(name: event.name, pwd: event.pwd));
      } else {
        yield LoginFailState("登录失败");
      }
    }
  }
}
