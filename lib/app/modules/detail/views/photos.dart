import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kosan_app/app/modules/detail/controllers/detail_controller.dart';
import 'package:kosan_app/theme.dart';

class Photos extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    Get.find<DetailController>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Photos', style: blackTextStyle.copyWith(fontSize: 16)),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: List.generate(controller.space.photos.length,
                  (index) => _photo(controller.space.photos[index]))),
        )
      ],
    );
  }

  Center _photo(String photo) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(right: 20),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            photo,
            height: 88,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
