import 'package:url_launcher/url_launcher.dart';

class AppFunctions {
  static Future<void> urlLauncherWithScheme(String url,
      {String? scheme}) async {
    if (await canLaunchUrl(Uri(scheme: scheme, path: url))) {
      await launchUrl(Uri(scheme: scheme, path: url));
    } else {}
  }

  static Future<void> urlLauncherSimples(
    String url,
  ) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {}
  }

  static Future<void> urlLauncherWhatsapp(
    String phoneNumber,
    String text,
  ) async {
    String url =
        'whatsapp://send?phone=+$phoneNumber&text=${Uri.encodeComponent(text)}';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {}
  }
}
