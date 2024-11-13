import 'package:get/get.dart';
import 'package:pet_sanctuary/app/modules/home/controllers/home_view_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeViewController>(
      HomeViewController(),
    );
  }
}
