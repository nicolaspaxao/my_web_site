import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_web_site/core/core.dart';
import 'package:my_web_site/design/design.dart';

class GitHubButton extends StatelessWidget {
  const GitHubButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => TextButton.icon(
        onPressed: () => AppFunctions.urlLauncherSimples(
          'https://github.com/nicolaspaxao',
        ),
        icon: FaIcon(
          FontAwesomeIcons.github,
          color: themeController.isDark.value
              ? AppColors.whiteColor
              : AppColors.darkBlue3.withOpacity(.6),
        ),
        label: Text('GitHub', style: Theme.of(context).textTheme.titleSmall),
      ),
    );
  }
}
