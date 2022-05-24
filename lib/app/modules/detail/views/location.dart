import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kosan_app/app/routes/app_pages.dart';
import 'package:kosan_app/theme.dart';

class LocationDetail extends GetView {
  @override
  Widget build(BuildContext context) {
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
                  'Jln. Kappan Sukses No.20',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
                Text(
                  'Palembang',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => Get.toNamed(Routes.MAPS),
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
