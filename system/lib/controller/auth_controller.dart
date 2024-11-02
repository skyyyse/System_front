import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import 'package:system/controller/storage_controller.dart';
import '../view/main_page.dart';
class auth_controller extends GetxController{
  final controller=Get.put(storage_controller());
  final email = TextEditingController();
  final password = TextEditingController();
  var loading = true.obs;
  void login_server() async {
    try {
      loading.value = true;
      final response = await http.post(
        Uri.parse('http://10.0.2.2:8000/api/login'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'email': email.text,
          'password': password.text,
        }),
      );
      if (response.statusCode == 200) {
        loading.value = false;
        final data = jsonDecode(response.body);
        if (data['status'] == true) {
          controller.saveToken(data['token']);
            Get.offAll(main_page());
          return Get.offAll(main_page());
        } else {
          print(data['message']);
        }
      }
    } catch (data) {
      print(data);
    }
  }
}