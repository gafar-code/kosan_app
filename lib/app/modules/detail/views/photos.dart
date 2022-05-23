import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Photos extends GetView {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Photos',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              _photo(),
              _photo(),
              _photo(),
            ],
          ),
        )
      ],
    );
  }

  Center _photo() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(right: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/images/img_detail.jpg',
            height: 88,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
