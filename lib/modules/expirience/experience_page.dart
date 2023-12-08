import 'package:flutter/material.dart';
import 'package:my_web_site/design/design.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseLayout(
      needCenter: false,
      needScroll: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Experiêncioa'),
        ],
      ),
    );
  }
}
