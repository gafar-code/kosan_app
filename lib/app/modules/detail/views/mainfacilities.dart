import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kosan_app/theme.dart';

class MainFacilities extends GetView {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Main Facilities', style: TextStyle(fontSize: 16)),
        SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _facilitiy('kitchen', numb: 2, icon: 'assets/icons/ic_kitchen.svg'),
            Spacer(),
            _facilitiy('bedroom', numb: 3, icon: 'assets/icons/ic_bedroom.svg'),
            Spacer(),
            _facilitiy('board', numb: 3, icon: 'assets/icons/ic_board.svg'),
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
            Text('$numb',
                style: TextStyle(
                    fontSize: 14, color: purple, fontWeight: FontWeight.w500)),
            Text(' $title', style: TextStyle(fontSize: 14, color: grey)),
          ],
        )
      ],
    );
  }
}
