import 'package:kaka/bloc/LoginPage.dart';
import 'package:kaka/pages/CheckBox.dart';
import 'package:kaka/pages/Dialog.dart';
import 'package:kaka/pages/DioDemo.dart';
import 'package:kaka/pages/PickerDate.dart';
import 'package:kaka/pages/ProductPage.dart';
import 'package:kaka/pages/ProductPage1.dart';
import 'package:kaka/pages/Radio.dart';
import 'package:kaka/pages/Swiper.dart';
import 'package:kaka/pages/Tabs1.dart';
import 'package:kaka/pages/Tabs2.dart';
import 'package:kaka/pages/TextField.dart';
import 'package:kaka/pages/User.dart';
import 'package:kaka/pages/Button.dart';
import 'package:kaka/titlebar/AppBar.dart';
import 'package:kaka/titlebar/AppBar1.dart';

// 配置路由
// 路由跳转逻辑全部在OngenerateRoute中,其他模块定义的路由全部在此
final routes = {
  // 默认跳转的页面
  '/': (context, {arguments}) => Tabs1(),
  '/tabs2': (context) => Tabs2(),
  '/textfield': (context) => TextFieldDemoPage(),
  '/checkbox': (context) => CheckBoxPage(),
  '/radio': (context) => RadioPage(),
  '/picker': (context) => PickDatePage(),
  '/swiper': (context) => SwiperPage(),
  '/dialog': (context) => DialogPage(),
  '/diodemo': (context) => DioDemoPage(),

  // 命名路由,不传值
  '/product': (context) => ProductPage(),
  // 命名路由,传值,因为入参多个,所以要声明自定义的参数名arg
  '/product1': (context, {arguments}) => ProductPage1(arg: arguments),

  '/appbar': (context) => AppBarDemoPage(),
  '/appbar1': (context) => AppBarDemoPage1(),

  '/user': (context) => UserPage(),
  '/buttonpage': (context) => ButtonPage(),
//------------bloc模块测试路由-----------/
  '/loginPage': (context) => LoginPage(),
};
