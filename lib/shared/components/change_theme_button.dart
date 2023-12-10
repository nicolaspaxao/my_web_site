import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_web_site/core/core.dart';
import 'package:my_web_site/design/design.dart';

class ChangeThemeButton extends StatefulWidget {
  const ChangeThemeButton({super.key});

  @override
  State<ChangeThemeButton> createState() => _ChangeThemeButtonState();
}

class _ChangeThemeButtonState extends State<ChangeThemeButton> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return IconButton(
        onPressed: () => themeController.changeTheme(),
        color: themeController.isDark.value
            ? AppColors.whiteColor
            : AppColors.darkBlue3.withOpacity(.6),
        icon: FaIcon(
          themeController.isDark.value
              ? FontAwesomeIcons.solidSun
              : FontAwesomeIcons.solidMoon,
          size: 20,
        ),
      );
    });
  }
}
