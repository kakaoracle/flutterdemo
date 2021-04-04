import 'package:equatable/equatable.dart';
import 'package:kaka/bloc/UserModel.dart';

class LoginState extends Equatable {
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

class LoginFailState extends LoginState {
  final String errMsg;
  LoginFailState(this.errMsg);
  @override
  List<Object> get props => [errMsg];
}
