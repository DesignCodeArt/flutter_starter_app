import 'package:flutter_starter/app/routing/routing.dart';
import 'package:get_it/get_it.dart';

import 'internet_connectivity_service.dart';

export './internet_connectivity_service.dart';

Future initServices() async {
  // Connectivity
  GetIt.I.registerSingleton<IInternetConnectivityService>(
      InternetConnectivityService());
  // GetIt.I.registerSingleton<IInternetConnectivityService>(
  //     NoInternetConnectivityService());

  //
  GetIt.I.registerSingleton<AppRouter>(AppRouter());
}
