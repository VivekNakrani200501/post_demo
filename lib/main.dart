import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:post_demo/route_management/route_generator.dart';
import 'package:post_demo/route_management/route_names.dart';

import 'dependency_injection/global_screen_bindings.dart';
import 'homeScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
        initialBinding: GlobalScreenBindings(),
        getPages: RouteGenerator.generate(),
        initialRoute: RouteNames
            .kMainRoute);

  }
}

