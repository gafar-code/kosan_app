// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kosan_app/app/models/space.dart';
import 'package:kosan_app/theme.dart';

import '../controllers/home_controller.dart';

class RecomendedSpace extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recommended Space', style: TextStyle(fontSize: 16)),
        FutureBuilder<List<Space>>(
            future: controller.getRecommendedSpaces(),
            builder: ((context, snapshot) {
              if (snapshot.hasData) {
                List<Space> data = snapshot.data!;
                return Column(
                  children: List.generate(data.length,
                      (index) => _recomendedSpace(context, space: data[index])),
                );
              }
              return Center(child: CircularProgressIndicator());
            }))
      ],
    );
  }

  Widget _recomendedSpace(BuildContext context, {required Space space}) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/detail', arguments: space);
      },
      child: Container(
        margin: EdgeInsets.only(top: 24),
        height: 110,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            SizedBox(
              height: 110,
              width: 130,
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: SizedBox(
                        height: 110,
                        width: 130,
                        child: Image.network(
                          space.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      )),
                  Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          color: purple,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(28),
                              topRight: Radius.circular(18)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(flex: 4),
                            SvgPicture.asset('assets/icons/ic_star.svg',
                                color: brown),
                            Spacer(flex: 1),
                            Text(
                              '${space.rating}/5',
                              style: whiteTextStyle.copyWith(fontSize: 13),
                            ),
                            Spacer(flex: 2),
                          ],
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(width: 18),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(flex: 2),
                Text(
                  space.name,
                  style: blackTextStyle.copyWith(fontSize: 18),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      NumberFormat.currency(locale: "en_US", symbol: r'$ ')
                          .format(space.price),
                      style: purpleTextStyle.copyWith(fontSize: 16),
                    ),
                    Text(
                      " / month",
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ],
                ),
                Spacer(flex: 3),
                Text(
                  space.address,
                  style: greyTextStyle.copyWith(fontSize: 14),
                ),
                Spacer(flex: 2),
              ],
            )
          ],
        ),
      ),
    );
  }
}
