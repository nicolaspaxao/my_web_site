import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_web_site/core/core.dart';

class LocaleMenuWidget extends StatefulWidget {
  const LocaleMenuWidget({super.key});

  @override
  State<LocaleMenuWidget> createState() => _LocaleMenuWidgetState();
}

class _LocaleMenuWidgetState extends State<LocaleMenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PopupMenuButton(
        color: themeController.isDark.value ? Colors.black87 : Colors.white,
        position: PopupMenuPosition.under,
        surfaceTintColor:
            themeController.isDark.value ? Colors.black87 : Colors.white,
        shadowColor: Colors.black26,
        tooltip: '',
        padding: EdgeInsets.zero,
        offset: const Offset(0, 0),
        itemBuilder: (_) {
          return <PopupMenuEntry<dynamic>>[
            _menuItem(locale: 'pt_BR', title: 'Português'),
            _menuItem(locale: 'en_US', title: 'English'),
          ];
        },
        child: Row(
          children: [
            Obx(
              () => FaIcon(
                Get.locale!.iconForLocation,
                color: themeController.isDark.value
                    ? Colors.white
                    : Colors.black87,
                size: 20,
              ),
            ),
            const SizedBox(width: 10),
            Text(Get.locale!.textForLocation),
          ],
        ).paddingAll(6),
      ),
    );
  }

  PopupMenuItem<dynamic> _menuItem({
    required String locale,
    required String title,
  }) {
    return PopupMenuItem(
      padding: EdgeInsets.zero,
      onTap: () => localeController.changeLocale(locale),
      child: Center(
        child: Text(
          title,
          style: Get.textTheme.titleSmall!,
        ).paddingSymmetric(horizontal: 10, vertical: 10),
      ),
    );
  }
}
