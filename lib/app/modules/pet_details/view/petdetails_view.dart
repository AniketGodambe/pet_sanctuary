import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/petdetails_view_controller.dart';

class PetDetailsView extends GetView<PetDetailsController> {
  const PetDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.petData.value.name ?? "-"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Text(controller.petData.value.shortInfo ?? ""),
          Text(controller.petData.value.climate ?? ""),
        ]),
      ),
    );
  }
}
