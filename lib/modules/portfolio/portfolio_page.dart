import 'package:flutter/material.dart';
import 'package:my_web_site/design/design.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseLayout(
      needCenter: false,
      needScroll: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Portifoplio'),
        ],
      ),
    );
  }
}
