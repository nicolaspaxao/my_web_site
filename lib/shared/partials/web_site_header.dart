import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_web_site/core/core.dart';
import 'package:my_web_site/design/design.dart';
import 'package:my_web_site/shared/shared.dart';

class WebSiteHeader extends StatelessWidget {
  const WebSiteHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return HeaderContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FaIcon(
            FontAwesomeIcons.code,
            color: Get.isDarkMode
                ? AppColors.lightBlue6
                : AppColors.darkBlue3.withOpacity(.6),
            size: 30,
          ),
          Row(
            children: [
              Visibility(
                visible: MediaQuery.sizeOf(context).width > 850,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () => Get.toNamed(Routes.HOME),
                      child: Text(AppTexts.HOME.tr,
                          style: Theme.of(context).textTheme.titleSmall),
                    ).paddingOnly(left: 3),
                    TextButton(
                      onPressed: () => Get.toNamed(Routes.EXPERIENCE),
                      child: Text(AppTexts.EXPERIENCE.tr,
                          style: Theme.of(context).textTheme.titleSmall),
                    ).paddingOnly(left: 3),
                    TextButton(
                      onPressed: () => Get.toNamed(Routes.PORTFOLIO),
                      child: Text(AppTexts.PORTFOLIO.tr,
                          style: Theme.of(context).textTheme.titleSmall),
                    ).paddingOnly(left: 3),
                    TextButton(
                      onPressed: () => Get.toNamed(Routes.CONTACT),
                      child: Text(AppTexts.CONTACT.tr,
                          style: Theme.of(context).textTheme.titleSmall),
                    ).paddingOnly(left: 3),
                  ],
                ),
              ),
              Visibility(
                visible: MediaQuery.sizeOf(context).width > 550,
                child: Row(
                  children: [
                    const LocaleMenuWidget().paddingOnly(left: 30),
                    const GitHubButton().paddingOnly(left: 10),
                    const ChangeThemeButton(),
                  ],
                ),
              ),
              Visibility(
                visible: MediaQuery.sizeOf(context).width < 850,
                child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.bars,
                    color: Get.isDarkMode
                        ? AppColors.whiteColor
                        : AppColors.darkBlue3.withOpacity(.6),
                  ),
                ),
              ),
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: 32, vertical: 16),
    );
  }
}

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Get.isDarkMode
            ? AppColors.darkBlue3.withOpacity(.6)
            : AppColors.whiteColor,
        boxShadow:
            Get.isDarkMode ? AppBoxShadow.empty : AppBoxShadow.headerBoxShadow,
      ),
      child: child,
    );
  }
}
