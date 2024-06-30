import 'package:auto_route/auto_route.dart';
import 'package:palmkindle/core/routes/palm_routes.gr.dart';

@AutoRouterConfig()
class PalmRoutes extends $PalmRoutes {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: HomeRoute.page, initial: true),
  ];
}
