import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kosan_app/app/modules/detail/controllers/detail_controller.dart';
import 'package:kosan_app/theme.dart';

class TitlePrice extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    Get.find<DetailController>();
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.space.name,
              style: blackTextStyle.copyWith(fontSize: 22),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Text(
                    NumberFormat.currency(locale: "en_US", symbol: r'$ ')
                        .format(controller.space.price),
                    style: purpleTextStyle.copyWith(fontSize: 16)),
                Text(' / month', style: greyTextStyle.copyWith(fontSize: 16)),
              ],
            )
          ],
        ),
        Spacer(),
        SizedBox(
          width: 108,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(5, (index) {
              return SvgPicture.asset('assets/icons/ic_star.svg',
                  color: controller.space.rating > index ? brown : grey);
            }),
          ),
        )
      ],
    );
  }
}
