import 'package:auto_route/auto_route.dart';
import 'package:flutter_starter/ui/ui.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: appRoutes,
)
// extend the generated private router
class $AppRouter {}
