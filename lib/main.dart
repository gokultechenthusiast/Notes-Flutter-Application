import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notes/core/routes/bindings/initial_binder.dart';
import 'package:notes/modules/editor/ui/editor_page.dart';

import 'core/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBinder(), // all the dependencies needed through
      // out the app is initialised here
      title: "Note Editor Application",
      initialRoute: RouteConstants.editPageRoute, // the starting page
      getPages: Routes.routesList,
    );
  }
}
