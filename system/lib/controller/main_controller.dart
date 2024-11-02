import 'package:get/get.dart';
import 'package:system/view/home_page.dart';
import 'package:system/view/order_page.dart';
import 'package:system/view/settings.dart';

class main_controller extends GetxController{
  int index=0;
  List page=[
    home_page(),
    order_page(),
    settings_page(),
  ];
}