import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:kosan_app/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:kosan_app/theme.dart';

class BottomNavBar extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 65,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
            color: grey2, borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _item('assets/icons/ic_home.svg', 0),
            _item('assets/icons/ic_mail.svg', 1),
            _item('assets/icons/ic_news.svg', 2),
            _item('assets/icons/ic_love.svg', 3),
          ],
        ),
      ),
    );
  }

  Widget _item(String icon, int index) {
    final isSelected = Get.find<DashboardController>().tabIndex == index;
    return GestureDetector(
      onTap: () {
        controller.changeTabIndex(index);
      },
      child: Container(
        height: 65,
        width: 65,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            SvgPicture.asset(icon, color: isSelected ? purple : grey),
            Spacer(),
            Container(
              height: 4,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  color: isSelected ? purple : grey2),
            )
          ],
        ),
      ),
    );
  }
}
