import 'package:cross_zero/app/modules/rooms/rooms_controller.dart';
import 'package:get/get.dart';

class RoomsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoomsController>(
      () => RoomsController(),
    );
  }
}
