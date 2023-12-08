import 'package:get/get.dart';
import 'package:my_web_site/core/core.dart';
import 'package:my_web_site/core/translations/controller/translation_controller.dart';
import 'package:my_web_site/design/design.dart';

class DepInj {
  static init() {
    Get.put<StorageRepository>(StorageRepository());
    Get.put<ThemeController>(ThemeController());
    Get.put<LocaleController>(LocaleController());
  }
}

final storage = Get.find<StorageRepository>();
final themeController = Get.find<ThemeController>();
final localeController = Get.find<LocaleController>();
