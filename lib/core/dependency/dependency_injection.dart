import 'package:get/get.dart';

import '../../view/screen/host/home_screen/controller/home_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    ///==========================Default Custom Controller ==================
   Get.lazyPut(() => HomeController(), fenix: true);

  }
}
