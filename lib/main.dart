import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_sanctuary/app/routes/app_routes.dart';

import 'app/routes/app_routes_string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.homeView,
      getPages: AppPages.routes,
    );
  }
}
