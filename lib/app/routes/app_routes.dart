import 'package:get/get.dart';
import 'package:pet_sanctuary/app/modules/home/view/home_view.dart';

import '../modules/home/bindings.dart/home_bindings.dart';
import '../modules/pet_details/bindings.dart/petdetails_bindings.dart';
import '../modules/pet_details/view/petdetails_view.dart';
import 'app_routes_string.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Routes.homeView,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.petDetails,
      page: () => const PetDetailsView(),
      binding: PetDetailsBinding(),
    ),
  ];
}
