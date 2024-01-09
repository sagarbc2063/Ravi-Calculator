import 'package:flutter/material.dart';
import 'package:ravi_calculator/src/constant/buttons_constant.dart';
import 'package:ravi_calculator/src/widgets/calculator_button.dart';

class HomeLowerSection extends StatelessWidget {
  const HomeLowerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.only(bottom: 20),
      child: Wrap(
          runSpacing: 30,
          spacing: 30,
          children: mineButtons.map((data) {
            return CalculatorButton(text: data['text'], value: data['value']);
          }).toList()),
    );
  }
}
