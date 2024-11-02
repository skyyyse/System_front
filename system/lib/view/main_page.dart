import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:system/controller/main_controller.dart';

class main_page extends StatefulWidget {
  main_page({super.key});

  @override
  State<main_page> createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  final controller=Get.put(main_controller());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: controller.page[controller.index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: controller.index,
        onTap: (value){
          setState(() {
            controller.index=value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.homeLg),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.cartArrowDown),label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
        ],
      ),
    );
  }
}
