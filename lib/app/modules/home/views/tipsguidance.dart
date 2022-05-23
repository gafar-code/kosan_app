import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kosan_app/theme.dart';

class TipsAndGudance extends GetView {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Tips & Guidelines', style: TextStyle(fontSize: 16)),
        SizedBox(height: 20),
        Column(
          children: [
            _item('City Guidlines',
                image: 'assets/icons/ic_cg.svg', time: '20 Apr'),
            _item('Jakarta Fairship',
                image: 'assets/icons/ic_jf.svg', time: '11 Dec'),
          ],
        )
      ],
    );
  }

  Container _item(String title, {String image = "", String time = ""}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.only(right: 14),
            child: SvgPicture.asset(image),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 8),
              Text(
                'Update $time',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w300, color: grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
