import 'package:flutter_starter/app/routing/routing.dart';
import 'package:get_it/get_it.dart';

Future initServices() async {
  //
  GetIt.I.registerSingleton<AppRouter>(AppRouter());
}
