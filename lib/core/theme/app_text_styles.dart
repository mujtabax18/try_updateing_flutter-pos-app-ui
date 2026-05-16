import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static const TextStyle appLogo = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 8,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle sideMenuLabel = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 10,
  );

  static const TextStyle sectionTitle = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle sectionSubtitle = TextStyle(
    color: AppColors.textSecondary,
    fontSize: 10,
  );

  static const TextStyle categoryTitle = TextStyle(
    fontSize: 14,
    color: AppColors.textPrimary,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle productTitle = TextStyle(
    color: AppColors.textPrimary,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  static const TextStyle productPrice = TextStyle(
    color: AppColors.primaryDark,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle productStock = TextStyle(
    color: AppColors.textMuted,
    fontSize: 12,
  );

  static const TextStyle orderTitle = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle orderPrice = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle orderQty = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle summaryLabel = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle placeholderTitle = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );
}