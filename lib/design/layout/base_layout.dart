import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_web_site/shared/shared.dart';

class BaseLayout extends StatelessWidget {
  const BaseLayout({
    super.key,
    required this.body,
    required this.needCenter,
    required this.needScroll,
  });

  final Widget body;
  final bool needCenter;
  final bool needScroll;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const WebSiteHeader(),
          _body(),
        ],
      ),
    );
  }

  _body() {
    if (needScroll) {
      return Expanded(
        child: Align(
          alignment: needCenter ? Alignment.center : Alignment.topCenter,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1080),
              child: Center(child: body.paddingSymmetric(horizontal: 20)),
            ),
          ),
        ),
      );
    }
    if (needScroll) {
      return Expanded(
        child: Align(
          alignment: needCenter ? Alignment.center : Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1080),
            child: Center(child: body.paddingSymmetric(horizontal: 20)),
          ),
        ),
      );
    }
  }
}
