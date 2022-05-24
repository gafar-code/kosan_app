import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kosan_app/app/routes/app_pages.dart';
import 'package:kosan_app/theme.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/icons/ic_circle.svg"),
                    SizedBox(height: 20),
                    Text("Find Cozy House",
                        style: blackTextStyle.copyWith(fontSize: 24)),
                    Text("to Stay and Happy",
                        style: blackTextStyle.copyWith(fontSize: 24)),
                    SizedBox(height: 20),
                    Text(
                      "Stop membuang banyak waktu",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                    Text(
                      "pada tempat yang tidak habitable",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(height: 40),
                    Material(
                      borderRadius: BorderRadius.circular(17),
                      color: purple,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(17),
                        onTap: () {
                          Get.offAndToNamed(Routes.DASHBOARD);
                        },
                        child: SizedBox(
                          width: 210,
                          height: 50,
                          child: Center(
                            child: Text(
                              "Explore Now",
                              style: whiteTextStyle.copyWith(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: brown,
                      height: 290,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset("assets/images/img_bottom.png")),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
