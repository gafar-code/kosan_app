import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kosan_app/app/models/space.dart';

class DetailController extends GetxController {
  var scrollController = ScrollController();
  Space space = Get.arguments;
}
