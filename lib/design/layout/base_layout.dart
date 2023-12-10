import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_web_site/core/core.dart';
import 'package:my_web_site/design/design.dart';
import 'package:my_web_site/shared/shared.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({
    super.key,
    required this.body,
    required this.needCenter,
    required this.needScroll,
  });

  final Widget body;
  final bool needCenter;
  final bool needScroll;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor:
            Get.isDarkMode ? AppColors.darkBlue3 : AppColors.whiteColor,
        child: Column(
          children: [
            DrawerHeader(
              child: FaIcon(
                FontAwesomeIcons.code,
                color: Get.isDarkMode
                    ? AppColors.lightBlue6
                    : AppColors.darkBlue3.withOpacity(.6),
                size: 70,
              ),
            ),
            20.heightSpace,
            DrawerTile(
              onTap: () => Get.toNamed(Routes.HOME),
              leading: FontAwesomeIcons.house,
              title: AppTexts.HOME.tr,
            ),
            DrawerTile(
              onTap: () => Get.toNamed(Routes.EXPERIENCE),
              leading: FontAwesomeIcons.clockRotateLeft,
              title: AppTexts.EXPERIENCE.tr,
            ),
            DrawerTile(
              onTap: () => Get.toNamed(Routes.PORTFOLIO),
              leading: FontAwesomeIcons.bookAtlas,
              title: AppTexts.PORTFOLIO.tr,
            ),
            DrawerTile(
              onTap: () => Get.toNamed(Routes.CONTACT),
              leading: FontAwesomeIcons.addressBook,
              title: AppTexts.CONTACT.tr,
            ),
            40.heightSpace,
            DrawerTile(
              onTap: () => themeController.changeTheme(),
              leading: themeController.isDark.value
                  ? FontAwesomeIcons.solidSun
                  : FontAwesomeIcons.solidMoon,
              title:
                  themeController.isDark.value ? 'Tema escuro' : 'Tema claro',
            ),
            40.heightSpace,
            DrawerTile(
              onTap: () => AppFunctions.urlLauncherSimples(
                'https://github.com/nicolaspaxao',
              ),
              leading: FontAwesomeIcons.github,
              title: 'GitHub',
            ),
            LocaleMenuWidget(
              offset: const Offset(40, 0),
              padding: 50,
              bgColor: AppColors.textColor,
              child: DrawerTile(
                leading: Get.locale!.iconForLocation,
                title: Get.locale!.textForLocation,
              ),
            )
          ],
        ),
      ),
      body: Column(children: [const WebSiteHeader(), _body()]),
    );
  }

  _body() {
    if (needScroll) {
      return Expanded(
        child: Align(
          alignment: needCenter ? Alignment.center : Alignment.topCenter,
          child: SingleChildScrollView(
            child: Center(child: body),
          ),
        ),
      );
    }

    return Expanded(
      child: Align(
        alignment: needCenter ? Alignment.center : Alignment.topCenter,
        child: Center(child: body),
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  const DrawerTile(
      {super.key, this.onTap, required this.leading, required this.title});

  final VoidCallback? onTap;
  final IconData leading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(fontWeight: FontWeight.w800),
      ),
      leading: FaIcon(
        leading,
        size: 20,
        color: Get.isDarkMode
            ? AppColors.whiteColor
            : AppColors.darkBlue3.withOpacity(.6),
      ),
      shape: Border(
          bottom: BorderSide(
              width: 1,
              color: Get.isDarkMode
                  ? AppColors.whiteColor.withOpacity(.7)
                  : AppColors.darkBlue3.withOpacity(.2))),
    ).paddingSymmetric(horizontal: 20);
  }
}
