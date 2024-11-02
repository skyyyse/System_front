import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:system/controller/storage_controller.dart';
import 'package:system/view/login_page.dart';
import 'package:system/view/main_page.dart';

void main()async {
  await GetStorage.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final controller=Get.put(storage_controller());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: controller.tokenKey.isEmpty?login():main_page(),
    );
  }
}

