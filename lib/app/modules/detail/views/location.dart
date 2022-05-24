import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kosan_app/app/modules/detail/controllers/detail_controller.dart';
import 'package:kosan_app/theme.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LocationDetail extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    Get.find<DetailController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: blackTextStyle.copyWith(fontSize: 16),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.space.address,
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
                Text(
                  '${controller.space.city}, ${controller.space.country}',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ],
            ),
            GestureDetector(
              onTap: () async {
                if (await canLaunchUrlString(controller.space.mapUrl)) {
                  launchUrlString(controller.space.mapUrl);
                } else {
                  print('Could not launch map');
                }
              },
              child: Image.asset(
                'assets/icons/ic_location.png',
                height: 40,
                width: 40,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
