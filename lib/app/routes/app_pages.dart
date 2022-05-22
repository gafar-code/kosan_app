import 'package:get/get.dart';

import 'package:kosan_app/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:kosan_app/app/modules/dashboard/views/dashboard_view.dart';
import 'package:kosan_app/app/modules/home/bindings/home_binding.dart';
import 'package:kosan_app/app/modules/home/views/home_view.dart';
import 'package:kosan_app/app/modules/splash/bindings/splash_binding.dart';
import 'package:kosan_app/app/modules/splash/views/splash_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
  ];
}
