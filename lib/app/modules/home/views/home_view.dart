// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kosan_app/app/modules/home/views/tipsguidance.dart';
import 'package:kosan_app/theme.dart';

import '../controllers/home_controller.dart';
import 'recomendedspace.dart';
import 'popularcities.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(20, 20, 20, 100),
          children: [
            Text('Explore Now',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            SizedBox(height: 10),
            Text(
              "Mencari kosan yang cozy",
              style: TextStyle(color: grey, fontSize: 16),
            ),
            SizedBox(height: 30),
            PolularCities(),
            RecomendedSpace(),
            SizedBox(height: 30),
            TipsAndGudance()
          ],
        ));
  }
}
