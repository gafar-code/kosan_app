import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kosan_app/theme.dart';

import '../controllers/notfound404_controller.dart';

class Notfound404View extends GetView<Notfound404Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SvgPicture.asset('assets/images/img_404.svg'),
          SizedBox(height: 60),
          Text('Where are you going?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
          SizedBox(height: 20),
          Text('Seems like the page you were',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w300, color: grey)),
          Text('requested is already gone',
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w300, color: grey)),
          SizedBox(height: 40),
          Container(
            height: 50,
            width: 210,
            decoration: BoxDecoration(
              color: purple,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Center(
              child: Text('Back to Home',
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500, color: white)),
            ),
          )
        ]),
      ),
    ));
  }
}
