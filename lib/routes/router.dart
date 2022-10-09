import 'package:auto_route/annotations.dart';
import 'package:auto_route/empty_router_widgets.dart';

import '../home_page.dart';
import '../posts/post_page.dart';
import '../posts/single_post_page.dart';
import '../settings/settings.dart';
import '../share/like_page.dart';
import '../share/share_page.dart';
import '../users/users_page.dart';
import '../users/user_profile_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'posts',
          name: 'PostsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: PostsPage,
            ),
            AutoRoute(
              path: ':postId',
              page: SinglePostPage,
            )
          ],
        ),
        AutoRoute(
          path: 'users',
          name: 'UsersRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: UsersPage,
            ),
            AutoRoute(
              path: ':userId',
              page: UserProfilePage,
            ),
          ],
        ),
        AutoRoute(
          path: 'settings',
          name: 'SettingsRouter',
          page: SettingsPage,
        ),
        AutoRoute(
          path: 'share',
          name: 'ShareRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              name: 'Share',
              page: SharePage,
            ),
            AutoRoute(
              path: 'like',
              name: 'LikeRouter',
              page: LikePage,
            ),
          ],
        )
      ],
    ),
  ],
)
class $AppRouter {}
