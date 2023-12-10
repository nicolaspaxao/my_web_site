import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_web_site/core/core.dart';
import 'package:my_web_site/design/design.dart';
import 'package:my_web_site/shared/shared.dart';

class BodyBackground extends StatelessWidget {
  const BodyBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          const BgDecoration(top: -30, right: -10),
          const BgDecoration(bottom: -30, left: -10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: BoxDecoration(
              color: themeController.isDark.value
                  ? AppColors.textColor.withOpacity(0.3)
                  : AppColors.lightBlue6.withOpacity(0.3),
            ),
            child: child,
          ),
        ],
      ),
    );
  }
}
