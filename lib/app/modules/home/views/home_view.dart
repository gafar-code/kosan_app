// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import 'package:get/get.dart';
import 'package:kosan_app/theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            Text('Explore Now',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            SizedBox(height: 10),
            Text(
              "Mencari kosan yang cozy",
              style: TextStyle(color: grey, fontSize: 16),
            ),
            SizedBox(height: 30),
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
            Text('Recommended Space', style: TextStyle(fontSize: 16)),
            Expanded(
              child: Column(
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
              ),
            )
          ],
        ));
  }

  Container _recomendedSpace(BuildContext context,
      {String title = "",
      int price = 0,
      int star = 5,
      String image = "",
      String addreass = ""}) {
    return Container(
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
                          SvgPicture.asset('assets/icons/ic_star.svg'),
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
                        color: grey, fontSize: 16, fontWeight: FontWeight.w300),
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
                                    'assets/icons/ic_star.svg'),
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
