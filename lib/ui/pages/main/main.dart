import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_starter/app/app.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return AutoTabsScaffold(
      routes: [
        const HomeRoute(),
        PostsRoute(),
        const SettingsRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: (index) {
            log('tap on index: $index');
            tabsRouter.setActiveIndex(index);
            log('Current path: ${tabsRouter.currentPath}');
          },
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Posts', icon: Icon(Icons.favorite)),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings)),
          ],
        );
      },
    );
  }
}
