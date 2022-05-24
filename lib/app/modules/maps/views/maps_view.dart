import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kosan_app/theme.dart';

import '../controllers/maps_controller.dart';

class MapsView extends GetView<MapsController> {
  @override
  Widget build(BuildContext context) {
    Get.find<MapsController>();
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Obx(
            () => GoogleMap(
                zoomControlsEnabled: false,
                onMapCreated: controller.onMapCreated,
                markers: controller.markers.toSet(),
                initialCameraPosition: controller.initialPotitions),
          ),
          Obx(() => !controller.isLoaded.value
              ? Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: white,
                  child: Center(
                    child: SpinKitThreeBounce(color: purple, size: 50),
                  ),
                )
              : Center())
        ],
      )),
    );
  }
}
