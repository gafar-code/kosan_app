import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kosan_app/app/modules/dashboard/views/bottomnavbar.dart';
import 'package:kosan_app/app/modules/home/views/home_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                IndexedStack(
                  index: controller.tabIndex,
                  children: [
                    HomeView(),
                    Center(
                      child: Text('Profile'),
                    ),
                    Center(
                      child: Text('Notification'),
                    ),
                    Center(
                      child: Text('Love'),
                    ),
                  ],
                ),
                BottomNavBar()
              ],
            ),
          ),
        );
      },
    );
  }
}
