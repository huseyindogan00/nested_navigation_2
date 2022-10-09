// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i11;

import '../home_page.dart' as _i1;
import '../posts/post_page.dart' as _i4;
import '../posts/single_post_page.dart' as _i5;
import '../settings/settings.dart' as _i3;
import '../share/like_page.dart' as _i9;
import '../share/share_page.dart' as _i8;
import '../users/user_profile_page.dart' as _i7;
import '../users/users_page.dart' as _i6;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.HomePage(key: args.key),
      );
    },
    PostsRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    UsersRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    SettingsRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SettingsPage(),
      );
    },
    ShareRouter.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    PostsRoute.name: (routeData) {
      final args = routeData.argsAs<PostsRouteArgs>(
          orElse: () => const PostsRouteArgs());
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.PostsPage(key: args.key),
      );
    },
    SinglePostRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SinglePostRouteArgs>(
          orElse: () =>
              SinglePostRouteArgs(postId: pathParams.getInt('postId')));
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.SinglePostPage(
          key: args.key,
          postId: args.postId,
        ),
      );
    },
    UsersRoute.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.UsersPage(),
      );
    },
    UserProfileRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<UserProfileRouteArgs>(
          orElse: () =>
              UserProfileRouteArgs(userId: pathParams.getInt('userId')));
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.UserProfilePage(
          key: args.key,
          userId: args.userId,
        ),
      );
    },
    Share.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.SharePage(),
      );
    },
    LikeRouter.name: (routeData) {
      final args = routeData.argsAs<LikeRouterArgs>(
          orElse: () => const LikeRouterArgs());
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.LikePage(key: args.key),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i10.RouteConfig(
              PostsRouter.name,
              path: 'posts',
              parent: HomeRoute.name,
              children: [
                _i10.RouteConfig(
                  PostsRoute.name,
                  path: '',
                  parent: PostsRouter.name,
                ),
                _i10.RouteConfig(
                  SinglePostRoute.name,
                  path: ':postId',
                  parent: PostsRouter.name,
                ),
              ],
            ),
            _i10.RouteConfig(
              UsersRouter.name,
              path: 'users',
              parent: HomeRoute.name,
              children: [
                _i10.RouteConfig(
                  UsersRoute.name,
                  path: '',
                  parent: UsersRouter.name,
                ),
                _i10.RouteConfig(
                  UserProfileRoute.name,
                  path: ':userId',
                  parent: UsersRouter.name,
                ),
              ],
            ),
            _i10.RouteConfig(
              SettingsRouter.name,
              path: 'settings',
              parent: HomeRoute.name,
            ),
            _i10.RouteConfig(
              ShareRouter.name,
              path: 'share',
              parent: HomeRoute.name,
              children: [
                _i10.RouteConfig(
                  Share.name,
                  path: '',
                  parent: ShareRouter.name,
                ),
                _i10.RouteConfig(
                  LikeRouter.name,
                  path: 'like',
                  parent: ShareRouter.name,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i10.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i11.Key? key,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          path: '/',
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PostsRouter extends _i10.PageRouteInfo<void> {
  const PostsRouter({List<_i10.PageRouteInfo>? children})
      : super(
          PostsRouter.name,
          path: 'posts',
          initialChildren: children,
        );

  static const String name = 'PostsRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class UsersRouter extends _i10.PageRouteInfo<void> {
  const UsersRouter({List<_i10.PageRouteInfo>? children})
      : super(
          UsersRouter.name,
          path: 'users',
          initialChildren: children,
        );

  static const String name = 'UsersRouter';
}

/// generated route for
/// [_i3.SettingsPage]
class SettingsRouter extends _i10.PageRouteInfo<void> {
  const SettingsRouter()
      : super(
          SettingsRouter.name,
          path: 'settings',
        );

  static const String name = 'SettingsRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ShareRouter extends _i10.PageRouteInfo<void> {
  const ShareRouter({List<_i10.PageRouteInfo>? children})
      : super(
          ShareRouter.name,
          path: 'share',
          initialChildren: children,
        );

  static const String name = 'ShareRouter';
}

/// generated route for
/// [_i4.PostsPage]
class PostsRoute extends _i10.PageRouteInfo<PostsRouteArgs> {
  PostsRoute({_i11.Key? key})
      : super(
          PostsRoute.name,
          path: '',
          args: PostsRouteArgs(key: key),
        );

  static const String name = 'PostsRoute';
}

class PostsRouteArgs {
  const PostsRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'PostsRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.SinglePostPage]
class SinglePostRoute extends _i10.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({
    _i11.Key? key,
    required int postId,
  }) : super(
          SinglePostRoute.name,
          path: ':postId',
          args: SinglePostRouteArgs(
            key: key,
            postId: postId,
          ),
          rawPathParams: {'postId': postId},
        );

  static const String name = 'SinglePostRoute';
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({
    this.key,
    required this.postId,
  });

  final _i11.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i6.UsersPage]
class UsersRoute extends _i10.PageRouteInfo<void> {
  const UsersRoute()
      : super(
          UsersRoute.name,
          path: '',
        );

  static const String name = 'UsersRoute';
}

/// generated route for
/// [_i7.UserProfilePage]
class UserProfileRoute extends _i10.PageRouteInfo<UserProfileRouteArgs> {
  UserProfileRoute({
    _i11.Key? key,
    required int userId,
  }) : super(
          UserProfileRoute.name,
          path: ':userId',
          args: UserProfileRouteArgs(
            key: key,
            userId: userId,
          ),
          rawPathParams: {'userId': userId},
        );

  static const String name = 'UserProfileRoute';
}

class UserProfileRouteArgs {
  const UserProfileRouteArgs({
    this.key,
    required this.userId,
  });

  final _i11.Key? key;

  final int userId;

  @override
  String toString() {
    return 'UserProfileRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i8.SharePage]
class Share extends _i10.PageRouteInfo<void> {
  const Share()
      : super(
          Share.name,
          path: '',
        );

  static const String name = 'Share';
}

/// generated route for
/// [_i9.LikePage]
class LikeRouter extends _i10.PageRouteInfo<LikeRouterArgs> {
  LikeRouter({_i11.Key? key})
      : super(
          LikeRouter.name,
          path: 'like',
          args: LikeRouterArgs(key: key),
        );

  static const String name = 'LikeRouter';
}

class LikeRouterArgs {
  const LikeRouterArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'LikeRouterArgs{key: $key}';
  }
}
