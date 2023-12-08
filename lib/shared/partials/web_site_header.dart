import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_web_site/core/core.dart';
import 'package:my_web_site/design/design.dart';
import 'package:my_web_site/shared/shared.dart';

class WebSiteHeader extends StatelessWidget {
  const WebSiteHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow:
            Get.isDarkMode ? AppBoxShadow.empty : AppBoxShadow.headerBoxShadow,
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(AppTexts.WELCOME.tr, style: Get.textTheme.titleLarge!),
          Row(
            children: [
              TextButton(
                onPressed: () => Get.toNamed(Routes.HOME),
                child: Text(AppTexts.HOME.tr, style: Get.textTheme.titleSmall),
              ).paddingOnly(left: 3),
              TextButton(
                onPressed: () => Get.toNamed(Routes.ABOUT),
                child: Text(AppTexts.ABOUT.tr, style: Get.textTheme.titleSmall),
              ).paddingOnly(left: 3),
              TextButton(
                onPressed: () => Get.toNamed(Routes.EXPERIENCE),
                child: Text(AppTexts.EXPERIENCE.tr,
                    style: Get.textTheme.titleSmall),
              ).paddingOnly(left: 3),
              TextButton(
                onPressed: () => Get.toNamed(Routes.PORTFOLIO),
                child: Text(AppTexts.PORTFOLIO.tr,
                    style: Get.textTheme.titleSmall),
              ).paddingOnly(left: 3),
              TextButton(
                onPressed: () => Get.toNamed(Routes.CONTACT),
                child:
                    Text(AppTexts.CONTATO.tr, style: Get.textTheme.titleSmall),
              ).paddingOnly(left: 3),
              const LocaleMenuWidget().paddingOnly(left: 30),
              const GitHubButton().paddingOnly(left: 10),
              const ChangeThemeButton(),
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: 32, vertical: 16),
    );
  }
}
