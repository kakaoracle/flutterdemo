import 'package:equatable/equatable.dart';

class LoginEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginPressEvent extends LoginEvent {
  final String name;
  final String pwd;
  LoginPressEvent(this.name, this.pwd);

  @override
  List<Object> get props => [name, pwd];
}
