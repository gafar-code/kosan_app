// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:kosan_app/theme.dart';

class RecomendedSpace extends GetView {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recommended Space', style: TextStyle(fontSize: 16)),
        Column(
          children: [
            _recomendedSpace(context,
                title: 'Kuretakeso Hott',
                price: 1000000,
                addreass: 'Jl. Kuretakeso Hott'),
            _recomendedSpace(context,
                title: 'Roemah Nenek',
                price: 500000,
                addreass: "Jl. Roemah Nenek"),
            _recomendedSpace(context,
                title: 'Darring How',
                price: 850000,
                addreass: "Jl. Darring How"),
          ],
        )
      ],
    );
  }

  Widget _recomendedSpace(BuildContext context,
      {String title = "",
      int price = 0,
      int star = 5,
      String image = "",
      String addreass = ""}) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/detail');
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
                      child: Image.asset('assets/images/img_test.png')),
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
                              '$star/5',
                              style: TextStyle(
                                  color: white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
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
                  title,
                  style: TextStyle(
                      color: black, fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      NumberFormat.currency(locale: "en_US", symbol: 'Rp.')
                          .format(price),
                      style: TextStyle(
                          color: purple,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      " / month",
                      style: TextStyle(
                          color: grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Spacer(flex: 3),
                Text(
                  addreass,
                  style: TextStyle(
                      color: grey, fontSize: 14, fontWeight: FontWeight.w300),
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
