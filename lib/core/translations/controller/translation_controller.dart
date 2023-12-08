import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_web_site/core/core.dart';

class LocaleController extends GetxController {
  static LocaleController get to => Get.find();

  // Defina o RxString para armazenar o locale atual
  RxString currentLocale = ''.obs;

  @override
  void onInit() {
    // Recupera o locale salvo ao inicializar
    _loadLocale();
    super.onInit();
  }

  // Função para trocar o locale
  void changeLocale(String locale) {
    currentLocale(locale);
    Get.updateLocale(Locale(locale));

    // Salva o locale no flutter_secure_storage
    _saveLocale(locale);
  }

  // Função para salvar o locale
  Future<void> _saveLocale(String locale) async {
    await storage.saveLocalData(data: StorageKeys.locale, key: locale);
  }

  // Função para carregar o locale salvo
  Future<void> _loadLocale() async {
    final storedLocale = await storage.getLocalData(key: StorageKeys.locale);
    if (storedLocale != null) {
      changeLocale(storedLocale);
    } else {
      changeLocale(Get.deviceLocale.toString());
    }
  }
}
