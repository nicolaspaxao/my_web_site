import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_web_site/core/core.dart';
import 'package:my_web_site/design/design.dart';
import 'package:my_web_site/shared/shared.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      needCenter: true,
      needScroll: false,
      body: BodyBackground(
        child: LayoutBuilder(builder: (context, constraint) {
          if (constraint.biggest.width > 1000) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const WelcomeSection(),
                    16.heightSpace,
                    const ButtonsSection(),
                  ],
                ),
                50.widthSpace,
                FaIcon(
                  FontAwesomeIcons.code,
                  color: Get.isDarkMode
                      ? AppColors.lightBlue6.withOpacity(0.3)
                      : AppColors.lightBlue7.withOpacity(0.3),
                  size: 250,
                ),
              ],
            );
          } else {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const WelcomeSection(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      left: 60,
                      top: -20,
                      welcomeFontSize: 30,
                      aboutMeFontSize: 14,
                      needCenter: true,
                    ),
                    16.heightSpace,
                    const ButtonsSection(
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
                30.heightSpace,
                FaIcon(
                  FontAwesomeIcons.code,
                  color: Get.isDarkMode
                      ? AppColors.lightBlue6.withOpacity(0.3)
                      : AppColors.lightBlue7.withOpacity(0.3),
                  size: 250,
                ),
              ],
            );
          }
        }),
      ),
    );
  }
}

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({
    super.key,
    this.mainAxisAlignment,
  });

  final MainAxisAlignment? mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        OutlinedButton(
          onPressed: () {},
          child: Text(
            AppTexts.MY_CURRICULUM.tr,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(fontWeight: FontWeight.w700),
          ).paddingSymmetric(horizontal: 10, vertical: 6),
        ),
        10.widthSpace,
        ElevatedButton(
          onPressed: () {},
          child: Text(
            AppTexts.EXPERIENCE.tr,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w700,
                color: Get.isDarkMode
                    ? AppColors.textColor
                    : AppColors.whiteColor),
          ).paddingSymmetric(horizontal: 10, vertical: 6),
        ),
      ],
    );
  }
}

class WelcomeSection extends StatelessWidget {
  const WelcomeSection(
      {super.key,
      this.crossAxisAlignment,
      this.welcomeFontSize,
      this.aboutMeFontSize,
      this.top,
      this.left,
      this.needCenter = false});

  final CrossAxisAlignment? crossAxisAlignment;
  final double? welcomeFontSize;
  final double? aboutMeFontSize;
  final double? top;
  final double? left;
  final bool? needCenter;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topLeft,
      children: [
        Column(
          crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
          children: [
            Text(
              AppTexts.WELCOME.tr,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontWeight: FontWeight.w900,
                    letterSpacing: 0.6,
                    height: .9,
                    fontSize: welcomeFontSize,
                  ),
              softWrap: true,
              textAlign: needCenter! ? TextAlign.center : TextAlign.start,
            ),
            10.heightSpace,
            Text(
              AppTexts.ABOUT_ME.tr,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontSize: aboutMeFontSize ?? 20),
              softWrap: true,
              textAlign: needCenter! ? TextAlign.center : TextAlign.start,
            ),
          ],
        ),
        TopIcon(
          top: top ?? -15,
          left: left,
        ),
      ],
    );
  }
}

class TopIcon extends StatelessWidget {
  const TopIcon({super.key, this.top, this.left});

  final double? top;
  final double? left;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: FaIcon(
        FontAwesomeIcons.codeCommit,
        color: Get.isDarkMode ? AppColors.lightBlue6 : AppColors.lightBlue7,
      ),
    );
  }
}
