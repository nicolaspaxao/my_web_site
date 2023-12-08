import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_web_site/core/core.dart';
import 'package:my_web_site/design/design.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    themeController.loadThemMode();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Website',
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      getPages: AppPages.pages,
      initialRoute: Routes.HOME,
      translationsKeys: AppTranslation.translations,
      locale: Get.deviceLocale,
    );
  }
}
