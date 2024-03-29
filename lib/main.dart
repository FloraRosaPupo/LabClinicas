import 'dart:async';
import 'dart:developer';

import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_self_service_cb/pages/splash_page.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/binding/lab_clinicas_application_binding.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/modules/auth/auth_module.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/modules/auth/home/home_module.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/modules/auth/self_service/self_service_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

void main() {
  runZonedGuarded(() {
    runApp(const LabClinicasSelfServiceApp());
  }, (error, stack) {
    log('Erro não tratado', error: error, stackTrace: stack);
    throw error;
  });
}

class LabClinicasSelfServiceApp extends StatelessWidget {
  const LabClinicasSelfServiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LabClinicasCoreConfig(
      title: "Lab Clinicas Auto Atendeimento",
      binding: LabClinicasApplicationBinding(),
      pagesBuilder: [
        FlutterGetItPageBuilder(
          page: (_) => const SplashPage(),
          path: '/',
        ),
      ],
      modules: [AuthModule(), HomeModule(), SelfServiceModule()],
    );
  }
}
