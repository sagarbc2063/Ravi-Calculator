import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ravi_calculator/src/constant/color_constant.dart';
import 'package:ravi_calculator/src/controllers/home_controller.dart';

class CalculatorButton extends StatelessWidget {
  CalculatorButton({super.key, required this.text, required this.value});

  final String text;
  final dynamic value;

  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if (value == 'C') {
          homeController.clear();
        } else if (value == '=') {
          homeController.equal();
        } else {
          homeController.write(value);
        }
      },
      child: Container(
        width: 70,
        height: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(12))),
        child: Text(text, style: TextStyle(color: lightColor, fontSize: 38, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
