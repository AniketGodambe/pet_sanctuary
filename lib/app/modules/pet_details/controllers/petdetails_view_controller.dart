import 'package:get/get.dart';
import 'package:pet_sanctuary/app/data_models/pets_model/pets_model.dart';

class PetDetailsController extends GetxController {
  Rx<PetsModel> petData = PetsModel().obs;

  @override
  void onInit() {
    petData.value = Get.arguments['petData'];
    super.onInit();
  }
}
