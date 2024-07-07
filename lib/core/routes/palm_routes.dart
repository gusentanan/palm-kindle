import 'package:auto_route/auto_route.dart';
import 'package:palmkindle/core/routes/palm_routes.gr.dart';

@AutoRouterConfig()
class PalmRoutes extends $PalmRoutes {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: CustomBottomNavigation.page, initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: LikesRoute.page),
    AutoRoute(page: DetailRoute.page),
    AutoRoute(page: SearchRoute.page),
  ];
}
