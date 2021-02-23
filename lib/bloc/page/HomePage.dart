import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../LoginBloc.dart';
import '../LoginState.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LoginBloc loginBloc;

  @override
  void initState() {
    super.initState();
    loginBloc = BlocProvider.of<LoginBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录成功的页面'),
        centerTitle: true,
      ),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is LoginSuccessState) {
            final currentState = state;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '登录成功',
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '登录账号::::${state.model.name}',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '登录密码::::${state.model.pwd}',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            );
          }

          return Container();
        },
      ),
    );
  }
}