// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:palmkindle/domain/model/book_detail_model.dart' as _i8;
import 'package:palmkindle/presentation/bottom_navigation.dart' as _i1;
import 'package:palmkindle/presentation/detail/detail_page.dart' as _i2;
import 'package:palmkindle/presentation/home/home_page.dart' as _i3;
import 'package:palmkindle/presentation/likes/likes_page.dart' as _i4;
import 'package:palmkindle/presentation/search/search_page.dart' as _i5;

abstract class $PalmRoutes extends _i6.RootStackRouter {
  $PalmRoutes({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    CustomBottomNavigation.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CustomBottomNavigation(),
      );
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DetailPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    LikesRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LikesPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SearchPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CustomBottomNavigation]
class CustomBottomNavigation extends _i6.PageRouteInfo<void> {
  const CustomBottomNavigation({List<_i6.PageRouteInfo>? children})
      : super(
          CustomBottomNavigation.name,
          initialChildren: children,
        );

  static const String name = 'CustomBottomNavigation';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DetailPage]
class DetailRoute extends _i6.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    _i7.Key? key,
    required _i8.BookDetailModel data,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static const _i6.PageInfo<DetailRouteArgs> page =
      _i6.PageInfo<DetailRouteArgs>(name);
}

class DetailRouteArgs {
  const DetailRouteArgs({
    this.key,
    required this.data,
  });

  final _i7.Key? key;

  final _i8.BookDetailModel data;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LikesPage]
class LikesRoute extends _i6.PageRouteInfo<void> {
  const LikesRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LikesRoute.name,
          initialChildren: children,
        );

  static const String name = 'LikesRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SearchPage]
class SearchRoute extends _i6.PageRouteInfo<void> {
  const SearchRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
