// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:palmkindle/presentation/bottom_navigation.dart' as _i1;
import 'package:palmkindle/presentation/home/home_page.dart' as _i2;
import 'package:palmkindle/presentation/likes/likes_page.dart' as _i3;

abstract class $PalmRoutes extends _i4.RootStackRouter {
  $PalmRoutes({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    CustomBottomNavigation.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CustomBottomNavigation(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    LikesRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LikesPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CustomBottomNavigation]
class CustomBottomNavigation extends _i4.PageRouteInfo<void> {
  const CustomBottomNavigation({List<_i4.PageRouteInfo>? children})
      : super(
          CustomBottomNavigation.name,
          initialChildren: children,
        );

  static const String name = 'CustomBottomNavigation';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LikesPage]
class LikesRoute extends _i4.PageRouteInfo<void> {
  const LikesRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LikesRoute.name,
          initialChildren: children,
        );

  static const String name = 'LikesRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
