import 'package:get/get.dart';

import '../controllers/notfound404_controller.dart';

class Notfound404Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Notfound404Controller>(
      () => Notfound404Controller(),
    );
  }
}
