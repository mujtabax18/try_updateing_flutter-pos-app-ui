import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    required this.subtitle,
    required this.action,
  });

  final String title;
  final String subtitle;
  final Widget action;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: AppTextStyles.sectionTitle),
            const SizedBox(height: 6),
            Text(subtitle, style: AppTextStyles.sectionSubtitle),
          ],
        ),
        const Expanded(child: SizedBox()),
        Expanded(
          flex: 5,
          child: action,
        ),
      ],
    );
  }
}