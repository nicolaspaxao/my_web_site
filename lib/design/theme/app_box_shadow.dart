import 'package:flutter/material.dart';
import 'package:my_web_site/design/design.dart';

class AppBoxShadow {
  static get empty => <BoxShadow>[];
  static get headerBoxShadow => [
        BoxShadow(
          color: AppColors.darkBlue1.withOpacity(0.10),
          offset: const Offset(0, 0),
          blurRadius: 40,
          spreadRadius: 0,
        )
      ];
}
