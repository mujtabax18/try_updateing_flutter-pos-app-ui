import 'package:flutter/material.dart';

import '../../../core/theme/app_text_styles.dart';

class PlaceholderPage extends StatelessWidget {
  const PlaceholderPage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$title Page',
        style: AppTextStyles.placeholderTitle,
      ),
    );
  }
}