import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kosan_app/app/modules/detail/views/location.dart';
import 'package:kosan_app/app/modules/detail/views/mainfacilities.dart';
import 'package:kosan_app/app/modules/detail/views/photos.dart';
import 'package:kosan_app/app/modules/detail/views/titleprice.dart';
import 'package:kosan_app/app/routes/app_pages.dart';
import 'package:kosan_app/theme.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    Get.find<DetailController>();
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Image.asset('assets/images/img_detail.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover),
        Container(
          margin: EdgeInsets.all(20),
          height: 40,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: Get.back,
                  child: Image.asset('assets/icons/ic_back.png')),
              Image.asset('assets/icons/ic_love.png'),
            ],
          ),
        ),
        SlidingUpPanel(
          maxHeight: MediaQuery.of(context).size.height * 0.7,
          minHeight: 260,
          boxShadow: [],
          parallaxEnabled: true,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          color: white,
          panelBuilder: (c) {
            return Column(
              children: [
                Expanded(
                  child: ListView(
                    controller: c,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                    children: [
                      TitlePrice(),
                      SizedBox(height: 40),
                      MainFacilities(),
                      SizedBox(height: 40),
                      Photos(),
                      SizedBox(height: 20),
                      LocationDetail(),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 40),
                    child: Material(
                      color: purple,
                      borderRadius: BorderRadius.circular(17),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(17),
                        onTap: () => Get.toNamed(Routes.CALL),
                        child: SizedBox(
                          height: 50,
                          width: 327,
                          child: Center(
                            child: Text('Booking Now',
                                style: whiteTextStyle.copyWith(fontSize: 18)),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ],
    )));
  }
}
