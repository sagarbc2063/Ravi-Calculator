import 'package:flutter/material.dart';
import 'package:ravi_calculator/src/constant/color_constant.dart';

class HomeUpperSection extends StatelessWidget {
const HomeUpperSection({super.key, required this.value});

  final dynamic value;

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20,),
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: Text('$value', textAlign: TextAlign.right, style: TextStyle(color: lightColor, fontSize: 65),),
    );
  }
}