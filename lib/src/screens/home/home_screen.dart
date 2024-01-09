import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ravi_calculator/src/constant/color_constant.dart';
import 'package:ravi_calculator/src/controllers/home_controller.dart';
import 'package:ravi_calculator/src/screens/home/home_lower_section.dart';
import 'package:ravi_calculator/src/screens/home/home_upper_section.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: darkColor,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Obx(() {
                return HomeUpperSection(
                  value: homeController.result.value,
                );
              }),
              const SizedBox(height: 20),
              const Expanded(child: HomeLowerSection())
            ],
          ),
        ),
      ),
    );
  }
}
