import 'package:equatable/equatable.dart';
import 'package:kaka/bloc/page/UserModel.dart';

abstract class LoginState extends Equatable {
  const LoginState();
  @override
  List<Object> get props => [];
}

class LoginInitialState extends LoginState {}

class LoginInProgressState extends LoginState {}

class LoginSuccessState extends LoginState {
  final UserModel model;
  LoginSuccessState(this.model);
  @override
  List<Object> get props => [model];
}

class LoginFailureState extends LoginState {
  final String errMsg;

  LoginFailureState(this.errMsg);

  @override
  List<Object> get props => [errMsg];
}
