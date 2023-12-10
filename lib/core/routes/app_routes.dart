import 'package:get/get.dart';
import 'package:my_web_site/modules/modules.dart';

import 'routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.HOME,
        page: () => const HomePage(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.EXPERIENCE,
        page: () => const ExperiencePage(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.PORTFOLIO,
        page: () => const PortfolioPage(),
        transition: Transition.noTransition),
    GetPage(
        name: Routes.CONTACT,
        page: () => const ContactPage(),
        transition: Transition.noTransition),
  ];
}
