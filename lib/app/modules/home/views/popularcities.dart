// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kosan_app/theme.dart';

class PolularCities extends GetView {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Popular Cities', style: TextStyle(fontSize: 16)),
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 20),
          height: 176,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              _citiesItem("Jakarta"),
              _citiesItem("Bandung", isFavorite: true),
              _citiesItem("Surabaya"),
            ],
          ),
        ),
      ],
    );
  }

  Center _citiesItem(String title,
      {String image = "", bool isFavorite = false}) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(right: 20),
        height: 150,
        width: 120,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(18)),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 102,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
                ),
                child: Stack(
                  children: [
                    isFavorite
                        ? Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                color: purple,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(28),
                                    topRight: Radius.circular(18)),
                              ),
                              child: Align(
                                alignment: Alignment(0.25, 0),
                                child: SvgPicture.asset(
                                    'assets/icons/ic_star.svg',
                                    color: brown),
                              ),
                            ))
                        : Center(),
                    Image.asset('assets/images/img_bottom.png'),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                      color: grey2,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18))),
                  child: Center(
                    child: Text(
                      title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
