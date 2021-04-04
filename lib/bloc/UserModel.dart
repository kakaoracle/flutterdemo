import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

class UserModel extends Equatable {
  final String name;
  final String pwd;
  @override
  List<Object> get props => [name, pwd];

  UserModel({@required this.name, @required this.pwd});

  factory UserModel.GetNew() {
    return UserModel(name: "", pwd: "");
  }
}
