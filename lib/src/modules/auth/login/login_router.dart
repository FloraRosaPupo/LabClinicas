import 'package:fe_lab_clinicas_self_service_cb/src/modules/auth/login/login_controller.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/modules/auth/login/login_page.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/services/user_login_service.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/services/user_login_service_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class LoginRouter extends FlutterGetItModulePageRouter {
  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton<UserLoginService>(
            (i) => UserLoginServiceImpl(userRepository: i())),
        Bind.lazySingleton((i) => LoginController(loginService: i())),
      ];

  @override
  // TODO: implement view
  WidgetBuilder get view => (_) => LoginPage();
}
