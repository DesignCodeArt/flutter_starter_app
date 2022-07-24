import 'package:flutter/material.dart';
import 'package:flutter_starter/app/app.dart';

import 'app.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(App());
}
