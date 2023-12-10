import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_web_site/core/core.dart';
import 'package:my_web_site/design/design.dart';

class BgDecoration extends StatelessWidget {
  const BgDecoration({super.key, this.top, this.bottom, this.left, this.right});

  final double? top;
  final double? bottom;
  final double? left;
  final double? right;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      left: left,
      top: top,
      right: right,
      child: Column(
        children: [
          Row(children: List.generate(5, (index) => _icon())),
          Row(children: List.generate(5, (index) => _icon())),
          Row(children: List.generate(5, (index) => _icon())),
          Row(children: List.generate(5, (index) => _icon())),
          Row(children: List.generate(5, (index) => _icon())),
        ],
      ),
    );
  }

  Widget _icon() {
    return Obx(() => FaIcon(
          FontAwesomeIcons.plus,
          color: themeController.isDark.value
              ? AppColors.lightBlue6.withOpacity(0.1)
              : AppColors.textColor.withOpacity(0.3),
          size: 30,
        ).paddingOnly(right: 6));
  }
}
