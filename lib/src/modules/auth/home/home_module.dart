import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'home_page.dart';

class HomeModule extends FlutterGetItModule {
  @override
  // TODO: implement moduleRouteName
  String get moduleRouteName => '/home';

  @override
  // TODO: implement pages
  Map<String, WidgetBuilder> get pages => {
        '/': (context) => HomePage(),
      };
}
