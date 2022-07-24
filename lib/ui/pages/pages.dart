import 'package:auto_route/auto_route.dart';
import 'package:flutter_starter/ui/ui.dart';

export './faq/faq_page.dart';
export './home/home_page.dart';
export './main/main.dart';
export './post_detail/post_detail_page.dart';
export './posts/posts_page.dart';
export './settings/settings_page.dart';

const appRoutes = [
  AutoRoute(
    initial: true,
    // path: '/',
    page: MainPage,
    children: [
      AutoRoute(
        page: HomePage,
      ),
      AutoRoute(
        page: PostsPage,
      ),
      AutoRoute(
        path: 'settings',
        name: 'SettingsRouter',
        page: EmptyRouterPage,
        children: [
          AutoRoute(
            path: '',
            page: SettingsPage,
          ),
          AutoRoute(
            path: 'faq',
            page: FaqPage,
          ),
        ],
      ),
    ],
  ),
  AutoRoute(
    path: '/posts/:id',
    page: PostDetailPage,
  ),
];
