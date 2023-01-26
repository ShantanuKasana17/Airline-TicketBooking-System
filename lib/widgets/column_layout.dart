import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnLayout({Key? key, required this.firstText, required this.secondText, required this.alignment, required this.isColor, required firsttext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,style: isColor==null? Styles.headLinestyle3.copyWith(color: Colors.white): Styles.headLinestyle3,),
        Gap(AppLayout.getHeight(5)),
        Text(secondText,style: isColor==null? Styles.headLinestyle4.copyWith(color: Colors.white):Styles.headLinestyle4,),
      ],
    );
  }
}
