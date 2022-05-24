import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kosan_app/app/modules/detail/controllers/detail_controller.dart';
import 'package:kosan_app/theme.dart';

class MainFacilities extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    Get.find<DetailController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Main Facilities', style: TextStyle(fontSize: 16)),
        SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _facilitiy('kitchen',
                numb: controller.space.numberOfKitchens,
                icon: 'assets/icons/ic_kitchen.svg'),
            Spacer(),
            _facilitiy('bedroom',
                numb: controller.space.numberOfBedrooms,
                icon: 'assets/icons/ic_bedroom.svg'),
            Spacer(),
            _facilitiy('board',
                numb: controller.space.numberOfCupboards,
                icon: 'assets/icons/ic_board.svg'),
          ],
        )
      ],
    );
  }

  Column _facilitiy(String title, {String icon = "", int numb = 0}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(icon),
        SizedBox(height: 12),
        Row(
          children: [
            Text('$numb', style: purpleTextStyle.copyWith(fontSize: 14)),
            Text(' $title', style: greyTextStyle.copyWith(fontSize: 14)),
          ],
        )
      ],
    );
  }
}
