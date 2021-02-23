import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaka/bloc/page/UserModel.dart';

import 'LoginEvent.dart';
import 'LoginRepository.dart';
import 'LoginState.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  @override
  LoginState get initialState => LoginInitialState();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    try {
      if (event is LoginPressEvent) {
        UserModel model = UserModel.init();
        yield LoginInProgressState();
        final currentEvent = event;
        model = await LoginRepository.login(
            currentEvent.name.trim(), currentEvent.pwd.trim());
        yield LoginSuccessState(model);
      }
    } catch (e) {
      final errMsg = '登录错误';
      yield LoginFailureState(errMsg);
    }
  }
}
