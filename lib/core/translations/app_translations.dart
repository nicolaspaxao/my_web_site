// ignore_for_file: constant_identifier_names

import 'package:my_web_site/core/translations/en_US/en-US.dart';
import 'package:my_web_site/core/translations/pt_BR/pt_BR.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'pt_BR': ptBr,
    'en_US': enUs,
  };
}

abstract class AppTexts {
  static const String WELCOME = 'WELCOME';
  static const String HOME = 'HOME';
  static const String ABOUT = 'ABOUT';
  static const String EXPERIENCE = 'EXPERIENCE';
  static const String PORTFOLIO = 'PORTFOLIO';
  static const String CONTATO = 'CONTATO';
}
