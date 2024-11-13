import 'package:get/get.dart';
import 'package:pet_sanctuary/app/modules/pet_details/controllers/petdetails_view_controller.dart';

class PetDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<PetDetailsController>(
      PetDetailsController(),
    );
  }
}
