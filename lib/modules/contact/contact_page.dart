import 'package:flutter/material.dart';
import 'package:my_web_site/design/design.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseLayout(
      needCenter: false,
      needScroll: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Sobre'),
        ],
      ),
    );
  }
}
