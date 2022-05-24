import 'package:get/get.dart';

import 'package:kosan_app/app/modules/call/bindings/call_binding.dart';
import 'package:kosan_app/app/modules/call/views/call_view.dart';
import 'package:kosan_app/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:kosan_app/app/modules/dashboard/views/dashboard_view.dart';
import 'package:kosan_app/app/modules/detail/bindings/detail_binding.dart';
import 'package:kosan_app/app/modules/detail/views/detail_view.dart';
import 'package:kosan_app/app/modules/home/bindings/home_binding.dart';
import 'package:kosan_app/app/modules/home/views/home_view.dart';
import 'package:kosan_app/app/modules/maps/bindings/maps_binding.dart';
import 'package:kosan_app/app/modules/maps/views/maps_view.dart';
import 'package:kosan_app/app/modules/notfound404/bindings/notfound404_binding.dart';
import 'package:kosan_app/app/modules/notfound404/views/notfound404_view.dart';
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
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.CALL,
      page: () => CallView(),
      binding: CallBinding(),
    ),
    GetPage(
      name: _Paths.NOTFOUND404,
      page: () => Notfound404View(),
      binding: Notfound404Binding(),
    ),
    GetPage(
      name: _Paths.MAPS,
      page: () => MapsView(),
      binding: MapsBinding(),
    ),
  ];
}
