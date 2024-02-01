import 'package:fe_lab_clinicas_self_service_cb/src/modules/auth/self_service/documents/documents_page.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/modules/auth/self_service/documents/scan/documents_scan_page.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/modules/auth/self_service/documents/scan_confirme/documents_scan_confirm_page.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/modules/auth/self_service/done/done_page.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/modules/auth/self_service/find_patient/find_patient_page.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/modules/auth/self_service/patient/patient_page.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/modules/auth/self_service/self_service_controller.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/modules/auth/self_service/self_service_page.dart';
import 'package:fe_lab_clinicas_self_service_cb/src/modules/auth/self_service/who_i_am/who_i_am_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class SelfServiceModule extends FlutterGetItModule {
  List<Bind<Object>> get bindings =>
      [Bind.lazySingleton((i) => SelfServiceController())];
  @override
  String get moduleRouteName => '/self-service';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/': (context) => SelfServicePage(),
        '/whoIAm': (context) => WhoIAmPage(),
        '/findPatient': (context) => FindPatientPage(),
        '/patient': (context) => PatientPage(),
        '/documents': (context) => DocumentsPage(),
        '/documents/scan': (context) => ScanPage(),
        '/documents/scan/confirm': (context) => ScanCofirmPage(),
        '/done': (context) => DonePage(),
      };
}
