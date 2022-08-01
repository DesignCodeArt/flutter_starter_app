import 'package:flutter/material.dart';
import 'package:flutter_starter/app/app.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import 'app_controller.dart';

class App extends GetView<AppController> {
  App({Key? key}) : super(key: key);

  final AppRouter _appRouter = GetIt.I.get();

  @override
  Widget build(BuildContext context) {
    Get.put(AppController());
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
