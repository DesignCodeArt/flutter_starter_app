// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i4;
import 'package:flutter/material.dart' as _i3;

import '../../ui/ui.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainPage());
    },
    PostDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PostDetailRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i1.PostDetailPage(postId: args.postId, key: args.key));
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    PostsRoute.name: (routeData) {
      final args = routeData.argsAs<PostsRouteArgs>(
          orElse: () => const PostsRouteArgs());
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.PostsPage(key: args.key));
    },
    SettingsRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>(
          orElse: () => const SettingsRouteArgs());
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SettingsPage(key: args.key));
    },
    FaqRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.FaqPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(MainRoute.name, path: '/', children: [
          _i2.RouteConfig(HomeRoute.name,
              path: 'home-page', parent: MainRoute.name),
          _i2.RouteConfig(PostsRoute.name,
              path: 'posts-page', parent: MainRoute.name),
          _i2.RouteConfig(SettingsRouter.name,
              path: 'settings',
              parent: MainRoute.name,
              children: [
                _i2.RouteConfig(SettingsRoute.name,
                    path: '', parent: SettingsRouter.name),
                _i2.RouteConfig(FaqRoute.name,
                    path: 'faq', parent: SettingsRouter.name)
              ])
        ]),
        _i2.RouteConfig(PostDetailRoute.name, path: '/posts/:id')
      ];
}

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i2.PageRouteInfo<void> {
  const MainRoute({List<_i2.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i1.PostDetailPage]
class PostDetailRoute extends _i2.PageRouteInfo<PostDetailRouteArgs> {
  PostDetailRoute({required String postId, _i4.Key? key})
      : super(PostDetailRoute.name,
            path: '/posts/:id',
            args: PostDetailRouteArgs(postId: postId, key: key));

  static const String name = 'PostDetailRoute';
}

class PostDetailRouteArgs {
  const PostDetailRouteArgs({required this.postId, this.key});

  final String postId;

  final _i4.Key? key;

  @override
  String toString() {
    return 'PostDetailRouteArgs{postId: $postId, key: $key}';
  }
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.PostsPage]
class PostsRoute extends _i2.PageRouteInfo<PostsRouteArgs> {
  PostsRoute({_i4.Key? key})
      : super(PostsRoute.name,
            path: 'posts-page', args: PostsRouteArgs(key: key));

  static const String name = 'PostsRoute';
}

class PostsRouteArgs {
  const PostsRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'PostsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.EmptyRouterPage]
class SettingsRouter extends _i2.PageRouteInfo<void> {
  const SettingsRouter({List<_i2.PageRouteInfo>? children})
      : super(SettingsRouter.name, path: 'settings', initialChildren: children);

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i1.SettingsPage]
class SettingsRoute extends _i2.PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({_i4.Key? key})
      : super(SettingsRoute.name, path: '', args: SettingsRouteArgs(key: key));

  static const String name = 'SettingsRoute';
}

class SettingsRouteArgs {
  const SettingsRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i1.FaqPage]
class FaqRoute extends _i2.PageRouteInfo<void> {
  const FaqRoute() : super(FaqRoute.name, path: 'faq');

  static const String name = 'FaqRoute';
}
