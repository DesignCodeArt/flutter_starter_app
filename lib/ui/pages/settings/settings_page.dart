import 'package:flutter/material.dart';
import 'package:flutter_starter/app/app.dart';
import 'package:get_it/get_it.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({Key? key}) : super(key: key);

  final AppRouter _router = GetIt.I.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            _router.push(const FaqRoute());
          },
          child: const Text('FAQ'),
        ),
      ),
    );
  }
}
