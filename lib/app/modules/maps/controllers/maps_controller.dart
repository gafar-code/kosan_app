// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsController extends GetxController {
  late GoogleMapController googleMapController;
  RxList<Marker> markers = <Marker>[].obs;
  RxBool isLoaded = false.obs;
  final initialPotitions = CameraPosition(
    target: LatLng(-7.447661, 112.698265),
    zoom: 18,
  );

  @override
  void onInit() {
    super.onInit();
  }

  void onMapCreated(GoogleMapController controller) {
    googleMapController = controller;
    markers.add(Marker(
      markerId: MarkerId('1'),
      position: initialPotitions.target,
      infoWindow: InfoWindow(title: 'Kosan 1'),
    ));
    Future.delayed(const Duration(seconds: 2), () => isLoaded.value = true);
  }
}
