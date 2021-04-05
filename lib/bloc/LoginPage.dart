import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'LoginBloc.dart';
import 'LoginEvent.dart';
import 'LoginState.dart';
import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _numer = 0;
  LoginBloc loginBloc;
  final nameController = new TextEditingController();
  final pwdController = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
        // 初始状态
        if (state is LoginInitialState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              nameTf(),
              pwdTF(),
              loginBtn(context, () {
                BlocProvider.of<LoginBloc>(context).add(
                    LoginPressEvent(nameController.text, pwdController.text));
              }),
            ],
          );
        }
        // 登录中状态
        if (state is LoginInProgressState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        // 登录成功状态
        if (state is LoginSuccessState) {
          // 创建一个新的materialApp,路由都由其管理,因此同一个MaterialApp下除了首页,跳转
          // 其他页面是一定有返回按钮的,而登录页跳转到首页就要求不能有返回按钮
          return MaterialApp(home: HomePage());
        }
        // 登录失败
        if (state is LoginFailState) {
          final currentState = state;
          return Center(
            child: Text(
              currentState.errMsg,
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          );
        }
      }),
    );
  }

  //---------  Widget ----------------------/
  Widget nameTf() {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      child: TextField(
        controller: nameController,
        decoration: InputDecoration(
            fillColor: Color(0x30cccccc),
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0x00FF0000)),
                borderRadius: BorderRadius.circular(100)),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x00FF0000)),
              borderRadius: BorderRadius.circular(100),
            ),
            hintText: "请输入用户名"),
      ),
    );
  }

  Widget pwdTF() {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      width: double.infinity,
      child: TextField(
        controller: pwdController,
        decoration: InputDecoration(
          fillColor: Color(0x30cccccc),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x00FF0000)),
              borderRadius: BorderRadius.circular(100)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0x00FF0000)),
              borderRadius: BorderRadius.circular(100)),
          hintText: '请输入密码',
        ),
        obscureText: true,
      ),
    );
  }

  Widget loginBtn(context, onPressed) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          '登录',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        color: Theme.of(context).accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
