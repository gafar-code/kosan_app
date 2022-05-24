import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kosan_app/theme.dart';

class TitlePrice extends GetView {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kuretakeso Hott',
              style: blackTextStyle.copyWith(fontSize: 22),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Text(r'$52', style: purpleTextStyle.copyWith(fontSize: 16)),
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
              final star = 4;
              return SvgPicture.asset('assets/icons/ic_star.svg',
                  color: star > index ? brown : grey);
            }),
          ),
        )
      ],
    );
  }
}
