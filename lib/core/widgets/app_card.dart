import 'package:flutter/material.dart';

import '../constants/app_dimensions.dart';
import '../theme/app_colors.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(12),
    this.margin,
    this.borderRadius = AppDimensions.radiusLarge,
    this.color = AppColors.card,
    this.border,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;
  final double borderRadius;
  final Color color;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: border,
      ),
      child: child,
    );
  }
}