import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:kosan_app/theme.dart';

class LocationDetail extends GetView {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
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
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w300, color: grey),
                ),
                Text(
                  'Palembang',
                  style: TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w300, color: grey),
                ),
              ],
            ),
            Image.asset(
              'assets/icons/ic_location.png',
              height: 40,
              width: 40,
            ),
          ],
        ),
      ],
    );
  }
}
