import 'package:flutter/material.dart';
import 'package:my_web_site/core/core.dart';
import 'package:my_web_site/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DepInj.init();
  runApp(const MainApp());
}
