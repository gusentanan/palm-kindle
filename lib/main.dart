import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:palmkindle/core/injections/injections.dart';
import 'package:palmkindle/core/routes/palm_routes.dart';
import 'package:palmkindle/core/utils/bloc_observer.dart';
import 'package:palmkindle/themes/palm_theme.dart';
import 'package:palmkindle/utils/style_utils.dart';

void main() async {
  // ignore: deprecated_member_use
  BlocOverrides.runZoned(
    () => runPalmKindleApp(),
    blocObserver: PalmBlocObserver(),
  );
}

void runPalmKindleApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  configureInjection();

  return runApp(const PalmKindleApp());
}

class PalmKindleApp extends StatelessWidget {
  const PalmKindleApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = getIt<PalmRoutes>();
    setupScreenUtil(context);
    return MaterialApp.router(
      title: 'Palm Kindle',
      theme: baseTheme,
      routerDelegate: AutoRouterDelegate(router),
      routeInformationParser: router.defaultRouteParser(),
    );
  }
}
