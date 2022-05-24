import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:kosan_app/theme.dart';

import '../controllers/call_controller.dart';

class CallView extends GetView<CallController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 150,
                  width: 150,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: white,
                      border: Border.all(color: purple),
                      borderRadius: BorderRadius.circular(90)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(90),
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      fit: BoxFit.cover,
                    ),
                  )),
              SizedBox(height: 60),
              Text('Amanda Shayna',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('12:30',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
                  SizedBox(width: 6),
                  Text('minutes',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300)),
                ],
              ),
              SizedBox(height: 40),
              GestureDetector(
                  onTap: Get.back,
                  child: SvgPicture.asset('assets/icons/ic_close.svg')),
            ],
          ),
        ),
      ),
    );
  }
}
